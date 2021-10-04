import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/features/publish/domain/auth_failure.dart';
import 'package:light_curve_app/pages/auth/widget/show_snackbar.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

class ContainerNotificationPage extends StatelessWidget {
  const ContainerNotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Option<Either<PublishFailure, String>>>(
      distinct: true,
      converter: (store) => store.state.publishState.publishFailureOrSuccessOption,
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.fold(() => {}, (failureOrSuccess) {
          failureOrSuccess.fold(
            (l) => l.when(
              cancelledByUser: () => showSnackBar('se canceló', context, icon: Icons.error),
              serverError: (err) => showSnackBar('Error de servidor', context, icon: Icons.error),
              internalError: () => showSnackBar('Revise su conexión', context, icon: Icons.wifi),
              notCalculated: () => showSnackBar('No se pudo calcular', context, icon: Icons.error),
              notPublished: () => showSnackBar('No se pudo Publicar', context, icon: Icons.error),
            ),
            (r) => showSnackBar(r, context, icon: Icons.check, color: Colors.green[400]),
          );
        });
      },
      builder: (context, vm) {
        return const SizedBox();
      },
    );
  }
}
