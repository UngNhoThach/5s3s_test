// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final controller;
  final String hintText;
  final FormFieldValidator<String> validator;
  const MyTextField({
    super.key,
    required this.keyboardType,
    required this.validator,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(labelText: hintText),
      validator: validator,
    );
  }
}

class SelectableImage extends StatelessWidget {
  const SelectableImage({
    Key? key,
    required this.isSelected,
    required this.imageAsset,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String imageAsset;
  final void Function(String imageAsset) onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(imageAsset),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: isSelected ? Colors.green : Colors.transparent)),
          child: Image.asset(imageAsset),
        ),
      ),
    );
  }
}
