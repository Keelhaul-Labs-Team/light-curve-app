import 'package:flutter/material.dart';

class LoadIndicator extends StatelessWidget {
  const LoadIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const size = 80.0;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            strokeWidth: 6,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Icon(
          Icons.upload,
          color: Theme.of(context).primaryColor,
          size: size / 2,
        )
      ],
    );
  }
}
