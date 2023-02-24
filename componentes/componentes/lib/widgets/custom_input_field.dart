import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final String? initialValue;
  final Widget? icono;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.initialValue,
    this.icono,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          //focusColor: OutlineInputBorder(borderSide: Colors.green),
          suffixIcon: suffixIcon,
          counterText: counterText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          labelText: labelText,
          icon: icono,
          helperText: helperText),
      autofocus: true,
      obscureText: obscureText,
      keyboardType: keyboardType,
      initialValue: initialValue,
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'Minimo 3' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
    );
  }
}
