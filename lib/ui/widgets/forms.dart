import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormFilled extends StatelessWidget {
  final String title;
  final bool offsecureText;
  final TextEditingController? controller;

  const CustomFormFilled({
    super.key,
    required this.title,
    this.offsecureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: offsecureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
