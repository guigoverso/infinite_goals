import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:infinite_goals/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Infinite Goals'),
        ),
        body: const Center(
          child: Text('Infinite Goals App'),
        ),
      ),
    );
  }
}
