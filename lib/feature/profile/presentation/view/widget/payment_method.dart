import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/widget/add_new_card.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 30,
          children: [
            CustomMyCard(
                pathIamge: 'assets/imageSvg/wallet3.svg',
                visaName: 'Master Card',
                visaPass: '*** *** 458755'),
            CustomMyCard(
                pathIamge: 'assets/imageSvg/wallet1.svg',
                visaName: 'Visa gold',
                visaPass: '*** *** 785142'),
            CustomMyCard(
                pathIamge: 'assets/imageSvg/wallet2.svg',
                visaName: 'Visa',
                visaPass: '*** *** 368425'),
            Spacer(),
            CustomButton(
              label: 'Add New Payment',
              onPressed: () {
                showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add new payment method',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 20),
                              CustomMyCard(
                                  pathIamge: 'assets/imageSvg/wallet2.svg',
                                  visaName: 'Credit or Debit Card',
                                  visaPass:
                                      'Pay with your Visa or Mastercard '),
                              Spacer(),
                              CustomButton(
                                label: 'Continue',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddNewCard()));
                                },
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class CustomMyCard extends StatelessWidget {
  final String pathIamge;
  final String visaName;
  final String visaPass;

  const CustomMyCard({
    super.key,
    required this.pathIamge,
    required this.visaName,
    required this.visaPass,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 70,
          child: SvgPicture.asset(pathIamge),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              visaName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              visaPass,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      ],
    );
  }
}
