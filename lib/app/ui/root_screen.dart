import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'app_loaded.dart';
import 'main_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
        isWaiting: (context)=>const AppLoader(),
        isAuthorized: (context, value, child)=>const MainScreen());
  }
}

class AuthBuilder extends StatelessWidget {
  final WidgetBuilder isWaiting;
  final ValueWidgetBuilder isAuthorized;

  const AuthBuilder(
      {super.key,
        required this.isWaiting,
        required this.isAuthorized});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.when(
            notAuthorized: () => isNotAuthorized(context),
            authorized: (userEntity) => isAuthorized(context, userEntity, this),
            waiting: () => isWaiting(context),
            error: (error) => isNotAuthorized(context),
          );
        },
        listenWhen: ((previous, current) =>
        previous.mapOrNull(error: (value) => value) !=
            current.mapOrNull(error: (value) => value)),
        listener: (context, state) {
          state.whenOrNull(
            error: (error) =>
                _showSnackBar(context, ErrorEntity.fromException(error)),
          );
        });
  }

  void _showSnackBar(BuildContext context, ErrorEntity error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: SingleChildScrollView(
            child: Text(
              maxLines: 5,
              "Error: ${error.errorMessage}, Message: ${error.message}",
            ))));
  }
}
