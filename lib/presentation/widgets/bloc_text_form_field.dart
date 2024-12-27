import 'package:flutter/material.dart';

class BlocTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? errorText;
  final bool enabled;
  final bool isObscure;
  final bool? isPassword;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final Widget? suffixIcon;
  final VoidCallback? onPress;
  final IconData? visibleIcon;
  final IconData? hiddenIcon;
  const BlocTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.errorText,
    this.enabled = true,
    this.isObscure = false,
    this.isPassword,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.suffixIcon,
    this.onPress,
    this.visibleIcon,
    this.hiddenIcon,
  }) : assert(
          isPassword == null || (isPassword == true && visibleIcon != null && hiddenIcon != null && onPress != null),
          'If isPassword is true, visibleIcon, hiddenIcon, and onPress must be provided',
        );

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return TextFormField(
      enabled: enabled,
      style: textTheme.labelMedium?.copyWith(
        color: errorText != null ? Color(0xffE86666) : null,
      ),
      obscureText: isObscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        suffixIcon: suffixIcon ?? IconButton(
          onPressed: onPress,
          icon: Icon(
            isObscure ? visibleIcon : hiddenIcon,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
