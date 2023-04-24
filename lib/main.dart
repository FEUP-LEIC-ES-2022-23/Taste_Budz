import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tastebudz/components/constants.dart';
import 'package:tastebudz/Screens/Welcome/second.dart';

import 'firebase/firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/SecondScreen': (BuildContext context) => SecondScreen(),
    },
    home: SecondScreen(),
  ));
}



