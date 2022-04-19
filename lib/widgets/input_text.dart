import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  final double fontSize;
  final void Function(String next)? onChanged;
  final String? Function(String? text)? validator;
  const InputText(
      {Key? key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.borderEnabled = true,
      this.obscureText = false,
      this.fontSize = 15,
      this.onChanged,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
          labelText: label,
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          enabledBorder: borderEnabled
              ? UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12))
              : InputBorder.none,
          labelStyle:
              TextStyle(color: Colors.black45, fontWeight: FontWeight.w500)),
    );
  }
}
