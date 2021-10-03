import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
import 'package:light_curve_app/pages/auth/auth_page.dart';
import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:redux/redux.dart';

class ContainerAuthPage extends StatelessWidget {
  const ContainerAuthPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return AuthPage(
          isSubmitting: vm.isSubmitting,
          loginWithGoogle: vm.loginWithGoogle,
        );
      },
    );
  }
}

class _ViewModel {
  final bool isSubmitting;
  final void Function() loginWithGoogle;
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  const _ViewModel({
    required this.isSubmitting,
    required this.loginWithGoogle,
    required this.authFailureOrSuccessOption,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      isSubmitting: store.state.authState.isSubmitting,
      loginWithGoogle: () => store.dispatch(const LoginWithGoogle()),
      authFailureOrSuccessOption: store.state.authState.authFailureOrSuccessOption,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          isSubmitting == other.isSubmitting &&
          authFailureOrSuccessOption == other.authFailureOrSuccessOption;
  @override
  int get hashCode => authFailureOrSuccessOption.hashCode ^ isSubmitting.hashCode;
}
