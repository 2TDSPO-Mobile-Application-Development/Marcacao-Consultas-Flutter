import 'package:flutter/material.dart';
import 'app_colors.dart'; // Assumindo que você tem esse arquivo

class AdminStyles {
  static const paddingTela = EdgeInsets.all(24.0);

  static final secao = BoxDecoration(
    color: AppColors.branco,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4)),
    ],
  );

  static const tituloSecao = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static InputDecoration campo(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    );
  }
}
