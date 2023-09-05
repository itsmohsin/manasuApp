import 'package:flutter/material.dart';
import 'package:manasu/main_layout.dart';
import 'package:manasu/screens/auth_page.dart';
import 'package:manasu/screens/doctor_details.dart';
import 'package:manasu/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // define themeData here
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Manasu App',
      theme: ThemeData(
        // pre-defined input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        // this is initial route of the application
        // which is the auth page (login and signup)
        '/': (context) => const AuthPage(),
        // this is for main layout after login
        'main': (context) => const MainLayout(),
        // this is for doctor details page
        'doc_details': (context) => const DoctorDetails(),
      },
    );
  }
}
