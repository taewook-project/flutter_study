import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test123/chat_app/constants.dart';
import 'chat_app/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var a = 3;
  Constants constants = Constants();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: Constants.apiKey,
          appId: Constants.appId,
          messagingSenderId: Constants.messagingSenderId,
          projectId: Constants.projectId));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginSignupScreen(),
    );
  }
}
