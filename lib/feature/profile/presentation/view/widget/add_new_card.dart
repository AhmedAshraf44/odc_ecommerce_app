import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_ecommerce/core/widgets/custom_text_input.dart';

import '../../../../../core/widgets/custom_button.dart';

class AddNewCard extends StatelessWidget {
  AddNewCard({super.key});
  final TextEditingController cardNameController =
      TextEditingController(text: "Bryan Adam");
  final TextEditingController cardNumberController =
      TextEditingController(text: "2727 8907 1278 3726");
  final TextEditingController expiryDateController =
      TextEditingController(text: "12/10/26");
  final TextEditingController cvvController =
      TextEditingController(text: "778");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Card'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF2D3C52),
                    const Color.fromARGB(255, 103, 114, 129),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned(
            top: 170,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: NewWidget(
                  cardNameController: cardNameController,
                  cardNumberController: cardNumberController,
                  expiryDateController: expiryDateController,
                  cvvController: cvvController,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 35,
            child: SvgPicture.asset('assets/imageSvg/wallet4.svg'),
          ),
        ],
      ),
    );
  }
}

/*
  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: NewWidget(
              cardNameController: cardNameController,
              cardNumberController: cardNumberController,
              expiryDateController: expiryDateController,
              cvvController: cvvController,
            ),
          ),
 */
class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.cardNameController,
    required this.cardNumberController,
    required this.expiryDateController,
    required this.cvvController,
  });

  final TextEditingController cardNameController;
  final TextEditingController cardNumberController;
  final TextEditingController expiryDateController;
  final TextEditingController cvvController;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        const SizedBox(height: 100),
        CustomTextInput(
            labelText: "Card Name",
            hintText: '',
            controller: cardNameController),
        CustomTextInput(
            labelText: "Card Number",
            hintText: '',
            controller: cardNumberController),
        Row(
          children: [
            Expanded(
              child: CustomTextInput(
                labelText: "Expiry Date",
                hintText: '',
                controller: expiryDateController,
                //  iconData: Icons.calendar_today,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomTextInput(
                  labelText: "CVV", hintText: '', controller: cvvController),
            ),
          ],
        ),
        Spacer(),
        CustomButton(label: 'Add Payment', onPressed: () {}),
        const SizedBox(height: 30),
      ],
    );
  }
}
