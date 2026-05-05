import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/features/auth/logic/login_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/login_cubit/state.dart';
import 'package:docdoc/features/auth/presentation/widgets/login_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/service_locator.dart';
import '../../../../core/theming/styles.dart';
import '../../../../routing/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _showSnackBar({
    required BuildContext context,
    required String message,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              _showSnackBar(
                context: context,
                message: 'Login success',
                color: ColorsManager.green,
              );

              Navigator.pushReplacementNamed(context, Routes.home);
            },
            error: (message) {
              _showSnackBar(
                context: context,
                message: message,
                color: ColorsManager.primaryColor,
              );
            },
          );
        },
        child: Scaffold(
          backgroundColor: ColorsManager.fillColor2,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),

                  Center(
                    child: Container(
                      width: 82.w,
                      height: 82.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightGreen,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.medical_services_outlined,
                        color: ColorsManager.green,
                        size: 38.sp,
                      ),
                    ),
                  ),

                  SizedBox(height: 32.h),

                  Text(
                    "Welcome Back",
                    style: TxtStyle.primaryTxtStyle,
                  ),

                  SizedBox(height: 8.h),

                  Text(
                    "Login to continue managing your appointments and doctors.",
                    style: TxtStyle.size14Weight400Grey,
                  ),

                  SizedBox(height: 28.h),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: BorderRadius.circular(24.r),
                      border: Border.all(
                        color: ColorsManager.txtFeildBorderColor,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorsManager.black.withOpacity(0.04),
                          blurRadius: 24,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: const LoginInputWidget(),
                  ),

                  SizedBox(height: 24.h),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.register,
                        );
                      },
                      child: Text(
                        "Don't have an account? Create Account",
                        style: TextStyle(
                          color: ColorsManager.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}