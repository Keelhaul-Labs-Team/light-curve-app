import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:light_curve_app/config.dart';

class ButtonLogin extends StatelessWidget {
  final void Function() loginWithGoogle;
  final bool isSubmitting;
  const ButtonLogin({
    Key? key,
    required this.isSubmitting,
    required this.loginWithGoogle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loginWithGoogle,
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(isSubmitting ? Colors.grey[350] : const Color(0xFF419EE1))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),

            /*    width: 50,
                height: 50, */
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(6.0),
            child: SvgPicture.asset(
              AssetsFile.google,
              semanticsLabel: 'Google Icon',
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 12),
          const Text('Entrar con Google', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
