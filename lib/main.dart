import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/pages/init_page.dart';
import 'package:light_curve_app/redux/actions/video_actions.dart';
import 'package:light_curve_app/redux/middleware/auth_middleware.dart';
import 'package:light_curve_app/redux/middleware/epics_middleware.dart';
import 'package:light_curve_app/redux/middleware/publish_middleware.dart';
import 'package:light_curve_app/redux/reducers/app_reducer.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';

import 'package:redux_epics/redux_epics.dart';

import 'features/auth/Infraestructure/firebase_auth_social_repository.dart';
import 'features/auth/application/login_google.dart';
import 'features/auth/application/sign_out.dart';
import 'features/publish/application/calculate_luminosity.dart';
import 'features/publish/application/load_video.dart';
import 'features/publish/application/publish_video.dart';
import 'features/publish/infraestructure/firebase_publish_repository.dart';
import 'features/publish/infraestructure/local_load_video_repository.dart';
import 'features/publish/infraestructure/mock_calculate_repository.dart';
import 'features/videos/infraestructure/firebase_videos_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  applicationDocumentsDirectory = (await getApplicationDocumentsDirectory()).path;
  final firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  const videoRepository = LocalVideoRepository();
  final firestore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final authRepository = FirebaseAuthSocialRepository(firebaseAuth, googleSignIn);
  //final fakeVideoRepository = MockVideosRepository();
  final videoExampleRepository = FirebaseVideosRepository(firestore);
  final publishRepository = FirebasePublishRepository(firestore, storage);
  const calculateRepository = MockCalculateRepository();

  runApp(LightCurveApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(userState: authRepository.getUserState()),
      middleware: [
        ...createAuthMiddlewares(
          loginWithGoogle: LoginWithGoogle(authRepository),
          signOutApp: SignOut(authRepository),
        ),
        ...createPublishMiddlewares(
          PublishVideo(publishRepository),
          const LoadVideoFile(videoRepository),
          const CalculateLuminosity(calculateRepository),
        ),
        EpicMiddleware(getEpicMiddleware(
          videosExampleRepository: videoExampleRepository,
          videosUserRepository: videoExampleRepository,
        ))
      ],
    ),
  ));
}

class LightCurveApp extends StatelessWidget {
  const LightCurveApp({Key? key, required this.store}) : super(key: key);
  final Store<AppState> store;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Light Curve',
        themeMode: ThemeMode.light,
        darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.green),
        theme: ThemeData(
          primarySwatch: const MaterialColor(0xFFFFFFFF, {
            50: Colors.white, //10%
            100: Color(0xff0B4DD4), //20%
            200: Color(0xff6B7388), //30%
            300: Color(0xff6B7388), //40%
            400: Color(0xff6B7388), //50%
            500: Color(0xff6B7388), //60%
            600: Color(0xff6B7388), //70%
            700: Color(0xff6B7388), //80%
            800: Color(0xff170907), //90%
            900: Color(0xff000000), //100%
          }),
          primaryColor: const Color(0xFF0B4DD4),
          cardColor: const Color(0xFF419EE1),
          errorColor: const Color(0xFFe84545),
        ),
        home: InitPage(
          initStreams: () => store.dispatch(const InitVideosStreamAction()),
        ),
      ),
    );
  }
}
