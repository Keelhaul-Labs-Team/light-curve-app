import 'package:flutter/material.dart';
import 'package:light_curve_app/config.dart';

import 'package:light_curve_app/pages/auth/widget/button_login.dart';

class AuthPage extends StatelessWidget {
  final void Function() loginWithGoogle;
  final bool isSubmitting;
  const AuthPage({
    Key? key,
    required this.isSubmitting,
    required this.loginWithGoogle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Inicia Sesión', style: TextStyle(fontSize: 35)),
        ButtonLogin(
          isSubmitting: isSubmitting,
          loginWithGoogle: loginWithGoogle,
        ),
        Image.asset(AssetsFile.astronomo)
      ],
    );
  }
}
