import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,
    //Appar theme
    appBarTheme: AppBarTheme(color: primary, elevation: 0),
    //TextButton

    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    // FloatingActionbuttons
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primary, elevation: 0),

    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0)
            ),

        //InputDecorationTheme
      inputDecorationTheme:  InputDecorationTheme(
              floatingLabelStyle: TextStyle(
                color: primary,
              ),
              enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),

          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)
              )
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: const BorderRadius.only( bottomLeft: Radius.circular(10),  topRight: Radius.circular(10) ),
              ),
              border: const OutlineInputBorder(
                //borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10),  topRight: Radius.circular(10) 
                ),
              ),


            ),
          
  );
}
