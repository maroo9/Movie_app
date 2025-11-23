import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.texts,
    required this.onTap,
    this.textColor = Colors.white, // default color
  });

  final String? texts;
  final VoidCallback? onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        texts!,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
          color: textColor,
        ),
      ),
    );
  }
}
