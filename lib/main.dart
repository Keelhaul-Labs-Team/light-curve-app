import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/pages/init_page.dart';
import 'package:light_curve_app/redux/middleware/auth_middleware.dart';
import 'package:light_curve_app/redux/middleware/epics_middleware.dart';
import 'package:light_curve_app/redux/reducers/app_reducer.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:redux/redux.dart';

import 'package:redux_epics/redux_epics.dart';

import 'features/auth/Infraestructure/mock_auth_repository.dart';
import 'features/auth/application/login_google.dart';
import 'features/auth/application/sign_out.dart';

void main() {
  runApp(LightCurveApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [
        ...createAuthMiddlewares(
          loginWithGoogle: LoginWithGoogle(FakeSocialRepository()),
          signOutApp: const SignOut(),
        ),
        EpicMiddleware(getEpicMiddleware())
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
          primarySwatch: Colors.blueGrey,
          primaryColor: Colors.blueGrey,
          errorColor: const Color(0xFFe84545),
        ),
        home: const InitPage(),
      ),
    );
  }
}
