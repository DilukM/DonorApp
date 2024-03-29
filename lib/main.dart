// import 'package:donor/pages/home.dart';
import 'package:donor/pages/BottomNav.dart';
import 'package:donor/pages/Leaderboard.dart';
import 'package:donor/pages/history.dart';
import 'package:donor/pages/home.dart';
import 'package:donor/pages/home2.dart';
import 'package:donor/pages/signin_screen.dart';
import 'package:donor/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manusath Derana',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Color.fromARGB(255, 237, 237, 237)),
        scaffoldBackgroundColor: Color.fromARGB(255, 237, 237, 237),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 216, 64, 53)),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
      initialRoute: '/signin', // Initial route is the Sign In page
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomePage2(),
        '/navbar': (context) => BottomNav(),
        '/leaderboard': (context) => LeaderboardPage(),
        '/history': (context) => DonationHistory(),
        // '/events': (context) => EventsPage(),
      },
    );
  }
}
