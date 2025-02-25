import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/core/widgets/custom_text_input.dart';
import 'package:odc_ecommerce/feature/auth/logic/auth_cubit.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/login_view.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/custom_button_login_with.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/custom_civider.dart';
import 'package:odc_ecommerce/feature/auth/presentation/widgets/custom_row_have_acount_text.dart';
import 'package:odc_ecommerce/feature/layout/presentation/view/app_layout.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var registerFormKey = GlobalKey<FormState>();

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
                  key: registerFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      Text(
                        "Regisster to your \naccount.",
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      CustomTextInput(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your User Name';
                          }
                          return null;
                        },
                        hintText: 'User Name',
                        labelText: 'User Name',
                        controller: userNameController,
                      ),
                      SizedBox(height: 16.h),
                      CustomTextInput(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                        hintText: 'Email Address',
                        labelText: 'Email Address',
                        controller: emailController,
                      ),
                      SizedBox(height: 16.h),
                      CustomTextInput(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Password';
                          }
                          return null;
                        },
                        hintText: 'Password',
                        labelText: 'Password',
                        controller: passwordController,
                        isPassword: context.watch<AuthCubit>().obscureText,
                        onPressed: () {
                          context.read<AuthCubit>().changeIsPassword();
                        },
                        icon: Icon(context.watch<AuthCubit>().obscureText
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off),
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                          label: 'SignUp',
                          onPressed: () {
                            if (registerFormKey.currentState!.validate()) {
                              context.read<AuthCubit>().signUp(
                                    userNameController.text,
                                    passwordController.text,
                                    emailController.text,
                                  );
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
                        text: "have an account?",
                        textButton: 'Login',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
