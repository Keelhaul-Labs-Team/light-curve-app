import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

class AlertDialogProfile extends StatelessWidget {
  final String? photoUrl;
  final String? name;
  final String email;
  const AlertDialogProfile({Key? key, this.photoUrl, this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Function()>(
      converter: (store) => () => store.dispatch(const SignOutAction()),
      builder: (context, signOut) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return AlertDialog(
          backgroundColor: const Color(0xFF2E353F),
          title: title,
          content: getContent(ElevatedButton(
            onPressed: () => {
              signOut(),
              Navigator.pop(context),
            },
            child: const Text('Logout'),
          )),
        );
      },
    );
  }

  Widget get title => Text(
        email,
        style: const TextStyle(fontSize: 18, height: 1.5, color: Color(0xFFB5B5B5)),
        textAlign: TextAlign.center,
      );

  Widget getContent(Widget button) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 45,
            child: photoUrl == null ? const Icon(Icons.person) : Image.network(photoUrl!),
          ),
          const SizedBox(height: 16),
          Text(
            name ?? '',
            style: const TextStyle(color: Color(0xFFB5B5B5)),
          ),
          const SizedBox(height: 16),
          button,
        ],
      );
}
