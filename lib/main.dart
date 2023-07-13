import 'package:flutter/material.dart';
import 'package:navigator/pages/Home_Page.dart';
import 'package:navigator/pages/notificacion_page.dart';
import 'package:navigator/pages/otra_PAge.dart';
import 'package:navigator/pages/segunda_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/otra': (context) => SecondPage(),
        '/avanza': (context) => OtraPage()
      },
    );
  }
}
