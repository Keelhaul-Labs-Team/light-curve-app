import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/pages/auth/widget/alert_dialog_profile.dart';
import 'package:light_curve_app/pages/widgets/avatar_cache_image.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

class AvatarUser extends StatelessWidget {
  const AvatarUser({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserState>(
      distinct: true,
      converter: (store) => store.state.userState,
      builder: (context, userState) {
        return userState.map(
          (value) => IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => showDialog<bool>(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialogProfile(
                        email: value.email,
                        photoUrl: value.photoUrl,
                        name: value.name,
                      );
                    },
                  ),
              icon: Center(
                child: AvatarCacheImage(
                  urlPath: value.photoUrl,
                  radius: 22,
                  //  child: value.photoUrl == null ? const Icon(Icons.person) : Image.network(value.photoUrl!),
                ),
              )),
          notLogged: (_) => const SizedBox(),
          error: (_) => const SizedBox(),
        );
      },
    );
  }
}
