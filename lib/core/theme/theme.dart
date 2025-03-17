import 'package:flutter/material.dart';

// Define your AppPallete and colors here (Assuming you have them in your code)
class AppPallete {
  static const Color backgroundColor = Color(0xFF121212);  // Example background color
  static const Color borderColor = Color(0xFF6200EE);      // Example border color
  static const Color hintColor = Color(0xFFBBBBBB);         // Example hint text color
}

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static _gradientBorder() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [Colors.purple, Colors.blue], // Gradient colors
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    );
  }

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: AppPallete.backgroundColor,
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(const Color.fromARGB(255, 173, 244, 252)),
      errorBorder: _border(const Color.fromARGB(0, 0, 0, 0)),
      focusedErrorBorder: _border(const Color.fromARGB(255, 255, 0, 0)),
      hintStyle: TextStyle(
        color: AppPallete.hintColor,
        fontSize: 16,
      ),
    ),
  );
}
