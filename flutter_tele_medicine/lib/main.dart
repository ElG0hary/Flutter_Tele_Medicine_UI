import 'package:flutter/material.dart';
import 'package:flutter_tele_medicine/screens/home_screen.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const MaterialColor primaryAppColor =
      MaterialColor(0xfff6f8fa, <int, Color>{
    50: Color(0xffbcbcbc), //10%
    100: Color(0xffa7a7a7), //20%
    200: Color(0xff929292), //30%
    300: Color(0xff7d7d7d), //40%
    400: Color(0xff686868), //50%
    500: Color(0xff535353), //60%
    600: Color(0xff3e3e3e), //70%
    700: Color(0xff292929), //80%
    800: Color(0xff141414), //90%
    900: Color(0xff000000), //100%
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TeleMedicine',
        home: const HomeScreen(),
        theme: ThemeData(
          primarySwatch: primaryAppColor,
          scaffoldBackgroundColor: primaryAppColor,
        ));
  }
}
