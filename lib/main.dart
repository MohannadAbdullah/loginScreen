import 'package:flutter/material.dart';
import "loginScreen.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 135, 116, 59),
  ),

  scaffoldBackgroundColor: const Color(0xFFF9FAFB),

  
  elevatedButtonTheme: ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 135, 116, 59),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 14),
      
    ),
  ),


  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,

    hintStyle: const TextStyle(color: Color(0xFF6B7280)),

    prefixIconColor: Color.fromARGB(255, 135, 116, 59),
    suffixIconColor: Color.fromARGB(255, 135, 116, 59),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 120, 116, 104),
        width:1),
      
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 135, 116, 59),
        width: 2,
      ),
    ),
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFF111827)),
  ),
),
      debugShowCheckedModeBanner: false,
      home:loginScreen(),

    ); 
  }
  
}
