import 'package:flutter/material.dart';

class PublishPage extends StatelessWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.video_call, size: 80),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Cargar Video'),
        )
      ],
    );
  }
}
