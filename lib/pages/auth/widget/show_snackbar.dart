import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

void showSnackBar(String message, BuildContext context, {required IconData icon, Color? color}) {
  final backgroundColor = color ?? Theme.of(context).errorColor;
  showFlash(
    context: context,
    duration: const Duration(seconds: 3),
    builder: (context, controller) {
      return Flash.bar(
        controller: controller,
        position: FlashPosition.top,
        useSafeArea: true,
        brightness: Brightness.dark,
        backgroundColor: backgroundColor,
        horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
        margin: const EdgeInsets.symmetric(vertical: kToolbarHeight + 8, horizontal: 16),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        forwardAnimationCurve: Curves.easeOutBack,
        reverseAnimationCurve: Curves.slowMiddle,
        child: FlashBar(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          content: Text(message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              )),
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(icon, color: Colors.white, size: 35),
          ),
          shouldIconPulse: false,
        ),
      );
    },
  );
}
