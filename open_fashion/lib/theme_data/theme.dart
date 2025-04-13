import 'package:flutter/material.dart';

class ThemeLight {
  static ThemeData get() {
    return ThemeData(
        colorScheme: colorSchemeLight,
      );
  }

  static final colorSchemeLight = ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF1C1C1C),      
        onPrimary: Colors.white,         
        secondary: Color(0xFFF5F5DC),     
        onSecondary: Color(0xFF1C1C1C),  
        surface: Colors.white,            
        onSurface: Color(0xFF2E2E2E),    
        error: Color(0xFF8B0000),         
        onError: Colors.white,            
      );
}

