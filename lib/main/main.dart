import 'package:edunation/features/auth/screens/signup/signup_screen.dart';
import 'package:edunation/features/meditation/screens/mediation_home_screen.dart';
import 'package:edunation/features/meditation_activities_screen.dart/screens/meditation_activites_screen.dart';
import 'package:edunation/features/options/screens/options_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //pls run asap
  // it takes a lot of time to run, idk why
  //hmm

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edunation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? SignUpScreen()
          : OptionsScreen(),
    );
  }
}
