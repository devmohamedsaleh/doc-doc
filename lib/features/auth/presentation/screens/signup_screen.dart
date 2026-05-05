import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/state.dart';
import 'package:docdoc/features/auth/presentation/widgets/register_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/service_locator.dart';
import '../../../../core/theming/styles.dart';
import '../../../../routing/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      create: (_) => getIt<SignUpCubit>(),
      child: BlocListener<SignUpCubit, SignupState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              _showSnackBar(
                context: context,
                message: 'Account created successfully',
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
                  SizedBox(height: 16.h),

                  Row(
                    children: [
                      Container(
                        width: 54.w,
                        height: 54.w,
                        decoration: BoxDecoration(
                          color: ColorsManager.primaryColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Icon(
                          Icons.person_add_alt_1_outlined,
                          color: ColorsManager.primaryColor,
                          size: 28.sp,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create Account",
                              style: TxtStyle.primaryTxtStyle,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              "Join us and start exploring doctors.",
                              style: TxtStyle.size14Weight400Grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24.h),

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
                    child: const RegisterInputWidget(),
                  ),

                  SizedBox(height: 24.h),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.login,
                        );
                      },
                      child: Text(
                        "Already have an account? Login",
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