import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbakytTar extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Image? image;
  final double iconSize;
  final bool isActive;
  final VoidCallback onTap;

  const UbakytTar({
    super.key,
    required this.text,
    this.icon,
    this.image,
    this.iconSize = 24.0,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Определяем цвета в зависимости от темы
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final activeColor = isDarkTheme ? Colors.orange : Colors.green;
    final inactiveColor = isDarkTheme ? Colors.grey.shade500 : Colors.black;
    final backgroundColor =
        isActive
            ? (isDarkTheme ? Colors.orange.withOpacity(0.1) : Colors.grey[100])
            : null;

    return ListTile(
      title: Text(
        text,
        style: GoogleFonts.nunito(
          color: isActive ? activeColor : inactiveColor,
          fontWeight: isActive ? FontWeight.bold : FontWeight.w700,
          fontSize: 18,
        ),
      ),
      leading:
          icon != null
              ? Icon(
                icon,
                size: iconSize,
                color: isActive ? activeColor : inactiveColor,
              )
              : image != null
              ? ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isActive ? activeColor : inactiveColor,
                  BlendMode.srcIn,
                ),
                child: image!,
              )
              : null,
      tileColor: backgroundColor,
      onTap: onTap,
    );
  }
}
