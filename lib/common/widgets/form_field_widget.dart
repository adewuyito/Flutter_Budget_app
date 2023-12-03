import 'package:b_expence/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.keyboard,
    required this.controller,
    required this.label,
    required this.suffixIcon,
  });

  final TextInputType keyboard;
  final TextEditingController controller;
  final String label;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return FormField(builder: (FormFieldState<dynamic> field) {
      return Padding(
        padding: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: BSizes.spaceBtwItems * .5),
            TextField(
              keyboardType: keyboard,
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                suffixIcon: suffixIcon,
              ),
            ),
          ],
        ),
      );
    });
  }
}
