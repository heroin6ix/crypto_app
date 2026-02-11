import 'package:flutter/material.dart';

final darkTheme =  ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[850],

        dividerColor: Colors.white24,

        listTileTheme: const ListTileThemeData(iconColor: Colors.white70),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850],
          foregroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          // shape: CircleBorder(),
        ),

        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
          
            foregroundColor: Colors.white,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[900],
            foregroundColor: Colors.white,
          ),
        ),

        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withValues(alpha: 0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      );