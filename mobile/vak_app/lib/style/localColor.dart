import 'package:flutter/material.dart';

class LocalColor{
  // transparan
  static const int _transparent = 0x00000000;
  static const MaterialColor transparent = MaterialColor(
    _transparent, 
      <int, Color>{
      500: Color(LocalColor._transparent),
    },
  );

  // Warna Primer
  static const int _primary = 0xFF6A5AE0;
    static const MaterialColor primary = MaterialColor(
    _primary, 
      <int, Color>{
      500: Color(LocalColor._primary),
    },
  );
}