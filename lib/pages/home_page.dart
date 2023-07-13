import 'package:flutter/material.dart';
import 'package:navigator/pages/segunda_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;

  final _text = 'Home';
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
        begin: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Comic WSans MS'),
        end: const TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold));
    _curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.elasticInOut);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: DefaultTextStyleTransition(
            style: _styleTween.animate(_curvedAnimation),
            child: Text(_text),
          ),
        ),
        body: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/otra');
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF18FFFF),
                        Color(0xFF00E5FF),
                        Color(0xFFB3E5FC)
                      ]),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Siguiente',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )));
  }
}
