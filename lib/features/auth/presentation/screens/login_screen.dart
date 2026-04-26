import 'package:docdoc/features/auth/logic/login_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/login_cubit/state.dart';
import 'package:docdoc/features/auth/presentation/widgets/login_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/theming/styles.dart';
import '../../../../routing/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Login success'),
                ),
              );

              Navigator.pushReplacementNamed(context, Routes.home);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
          );
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    "Login With Your Account",
                    style: TxtStyle.primaryTxtStyle,
                  ),
                  const SizedBox(height: 12),
                  LoginInputWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}