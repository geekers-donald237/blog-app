import 'package:blog_app/core/theme/app_color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const AuthGradientButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColorsPalette.gradient1,
            AppColorsPalette.gradient2,
            AppColorsPalette.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7.dp),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize:  Size(395.dp, 55.dp),
          backgroundColor: AppColorsPalette.transparentColor,
          shadowColor: AppColorsPalette.transparentColor,
        ),
        child: Text(
          buttonText,
          style:  TextStyle(
            fontSize: 17.dp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}