import 'package:flutter/material.dart';
/// IDK Why i can't use Coloro scheme with theme iam getting so fk annoying 

  // var greenLight= ThemeData(
  //   brightness: Brightness.light,
  //   primaryColor: Colors.green,
  // ),
  // AppTheme.GreenDark: ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.green[700],
  // );

  var blueLight= blueLightTheme.copyWith(
    // Define the default font family.
    //fontFamily: 'Georgia',


    appBarTheme: blueLightTheme.appBarTheme.copyWith(
      // const Color(0x4C9BBA),
      color: Color.fromRGBO(76, 155, 186, 1),
    ),

    //const Color(0xF6F9FA),
    bottomAppBarColor: const Color.fromRGBO(246, 249, 250, 0.98),
    //const Color(0xFDFEFE),
    dialogBackgroundColor: const Color.fromRGBO(253, 254, 254, 1),
    // const Color(0xB00020),
    errorColor: const Color.fromRGBO(176, 0, 32, 1),
    //const Color(0xFF4F58),
    toggleableActiveColor: const Color.fromRGBO(255, 79, 88, 1),
    //const Color(0xF6F9FA),
    canvasColor: const Color.fromRGBO(76, 155, 186, 1),
    //const Color(0xE0E0E0),
    dividerColor: const Color.fromRGBO(243, 243, 244, 0.95),
    //const Color(0x9E9E9E),
    disabledColor: const Color.fromRGBO(158, 158, 158, 1),

    textSelectionTheme: const TextSelectionThemeData(
      //const Color(0x4C9BBA),
      cursorColor: Color.fromRGBO(76, 155, 186, 1),
      // const Color(0xC9E1EA),
      selectionColor: Color.fromRGBO(201, 225, 234, 0.85),
      // const Color(0x356C82),
      selectionHandleColor: Color.fromRGBO(53, 108, 130, 0.35),
    ),
    //const Color(0x4C9BBA),
    indicatorColor: Color.fromRGBO(76, 155, 186, 1),

    cardTheme: const CardTheme(
      color: Color.fromRGBO(253, 254, 254, 1),
    ),
    hoverColor: Color.fromRGBO(236, 239, 240, 1),
    focusColor: Color.fromRGBO(249, 251, 253, 1),

    // buttonColor: Color.fromRGBO(76, 155, 186, 1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0x4C9BBA),
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(color: const Color(0x4C9BBA))),
      ),
    ),

    // buttonTheme: ButtonThemeData(
    //   //const Color(0x4C9BBA) ,
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(5)),
    //       side: BorderSide(color: const Color(0x4C9BBA))),
    //   buttonColor: const Color(0x4C9BBA),
    //   disabledColor: Colors.white,
    // ),

    // primaryTextTheme: TextTheme(),
    // iconTheme: IconThemeData(
    //   color: const Color(0x4C9BBA),
    // ),
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Colors.black,
    //     fontSize: 20.0,
    //   ),
    //   bodyText2: TextStyle(
    //     color: Colors.black,
    //     fontSize: 18.0,
    //   ),
    // ),

  );

  var blueDark=ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  );

 var tealLight= ThemeData(
    //scaffoldBackgroundColor: Colors.teal,
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.teal,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      bodyText2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );


// ThemeData(
//     // Define the default brightness and colors.
//     brightness: Brightness.dark,
//     primaryColor: Colors.lightBlue[800],
//     accentColor: Colors.cyan[600],

//     // Define the default font family.
//     fontFamily: 'Georgia',

//     // Define the default TextTheme. Use this to specify the default
//     // text styling for headlines, titles, bodies of text, and more.
//     textTheme: TextTheme(
//       headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//       headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//       bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//     ),

//  new ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: CompanyColors.blue,
//   primaryColor: CompanyColors.blue[500],
//   primaryColorBrightness: Brightness.light,
//   accentColor: CompanyColors.green[500],
//   accentColorBrightness: Brightness.light
// );

///**      BlueLightScheme    */
const BlueLightScheme = const ColorScheme.light(
  primary: const Color.fromRGBO(76, 155, 186, 1),
  onPrimary: Colors.white,
  primaryVariant: const Color(0x078282),
  secondary: const Color(0xFF4F58),
  secondaryVariant: const Color(0xBF4A50),
  onSecondary: Colors.white,
  error: const Color(0xB00020),
  onError: Colors.white,
  background: const Color(0xF6F9FA),
  onBackground: Colors.black,
  surface: const Color(0xFDFDFD),
  onSurface: Colors.black,
);

var blueLightTheme = ThemeData.from(
  colorScheme: BlueLightScheme,
);
