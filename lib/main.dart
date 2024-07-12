import 'package:alpha_miles_salaries/search_salary_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD24tOXpREon3i537WvvwxHAsSrqaJbZBo",
      authDomain: "alpha-miles-6cf46.firebaseapp.com",
      projectId: "alpha-miles-6cf46",
      storageBucket: "gs://alpha-miles-6cf46.appspot.com",
      messagingSenderId: "605280860204",
      appId: "1:605280860204:web:0239f8f4718f02acb63989",
      measurementId: "G-2ZH4LFZGTG",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALpha Miles Salaries',
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SearchSalaryScreen(),
    );
  }
}
