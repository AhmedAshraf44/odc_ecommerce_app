import 'package:flutter/material.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/profile_view.dart';

import '../../../../../core/widgets/custom_text_input.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});

  final TextEditingController nameController =
      TextEditingController(text: "Bryan Adam");
  final TextEditingController emailController =
      TextEditingController(text: "bryan.adam83@gmail.com");
  final TextEditingController phoneController =
      TextEditingController(text: "812 788 611672");
  final TextEditingController dobController =
      TextEditingController(text: "12 / 12 / 1994");
  final TextEditingController genderController =
      TextEditingController(text: "Male");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 10,
                children: [
                  CustomTextInput(
                      hintText: '',
                      labelText: 'Fullname',
                      controller: nameController),
                  CustomTextInput(
                    hintText: '',
                    labelText: 'Data of birth',
                    controller: dobController,
                    //iconData: Icons.date_range,
                  ),
                  CustomTextInput(
                      hintText: '',
                      labelText: 'Email Address',
                      controller: emailController),
                  CustomTextInput(
                      hintText: '',
                      labelText: 'Phone Number',
                      controller: phoneController),
                  CustomTextInput(
                    hintText: '',
                    labelText: 'Gender',
                    controller: genderController,
                    //   iconData: Icons.arrow_downward_rounded,
                  ),
                  SizedBox(height: 30),
                  CustomButton(label: 'Save Change', onPressed: () {}),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
