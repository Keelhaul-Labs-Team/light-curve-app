import 'package:flutter/material.dart';

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
    return Center(
      child: ElevatedButton(
        onPressed: isSubmitting ? null : loginWithGoogle,
        child: const Text('Loguearse con Google'),
      ),
    );
  }
}
