import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/feature/auth/logic/auth_cubit.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/otp_view.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/register_view.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/build_bottom_sheet_forget.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/custom_button_login_with.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/custom_row_have_acount_text.dart';
import 'package:odc_ecommerce/feature/layout/presentation/view/app_layout.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_input.dart';
import '../widgets/custom_civider.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoginLoading) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      Center(child: CircularProgressIndicator()));
            }

            if (state is AuthLoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Success Login"),
              ));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppLayout()));
            }

            if (state is AuthLoginFailure) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.h),
                        Text(
                          "Login to your \naccount.",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 32.h),
                        CustomTextInput(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          hintText: 'Email address',
                          labelText: 'Email Address',
                          controller: userNameController,
                        ),
                        SizedBox(height: 16.h),
                        CustomTextInput(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          hintText: 'Password',
                          labelText: 'Password',
                          controller: passwordController,
                          isPassword: context.read<AuthCubit>().obscureText,
                          onPressed: () {
                            context.read<AuthCubit>().changeIsPassword();
                          },
                          icon: context.read<AuthCubit>().obscureText
                              ? Icon(
                                  Icons.remove_red_eye_outlined,
                                )
                              : Icon(Icons.visibility_off_outlined),
                        ),
                        SizedBox(height: 24.h),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isDismissible: true,
                                context: context,
                                builder: (context) => BuildBottomSheetForget(),
                              );
                            },
                            child: Text(
                              'Forget password?',
                              style: TextStyle(
                                color: AppColors.kTextPrimary,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        CustomButton(
                            label: 'Login',
                            onPressed: () {
                              if (loginFormKey.currentState!.validate()) {
                                context.read<AuthCubit>().login(
                                    userNameController.text,
                                    passwordController.text);
                              }
                            }),
                        SizedBox(height: 24.h),
                        CustomDivider(),
                        SizedBox(height: 24.h),
                        CustomButtonLoginWith(
                          image: 'assets/images/google.svg',
                          text: 'Continue with google',
                        ),
                        SizedBox(height: 16.h),
                        CustomButtonLoginWith(
                          image: 'assets/images/facebook.svg',
                          text: 'Continue with facebook',
                        ),
                        SizedBox(height: 24.h),
                        CustomRowHaveAcountText(
                          text: "Don't have an account?",
                          textButton: 'Register',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterView(),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 24.h),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
