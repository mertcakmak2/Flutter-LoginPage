import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool visibility;
  
  const RoundedInputField({
    Key? key, 
    required this.hintText, 
    required this.icon, 
    required this.onChanged, 
    required this.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: visibility,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: visibility ? Icon(Icons.visibility, color: kPrimaryColor,) : null,
        icon: Icon(icon, color: kPrimaryColor), 
        hintText: hintText,
        border: InputBorder.none
      ),
    );
  }
}