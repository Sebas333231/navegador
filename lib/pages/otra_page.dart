import 'package:flutter/material.dart';
import 'package:navigator/pages/notificacion_page.dart';

class OtraPage extends StatefulWidget {
  const OtraPage({Key? key}) : super(key: key);

  @override
  State<OtraPage> createState() => _OtraPageState();
}

class _OtraPageState extends State<OtraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Tercera Pagina',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const[
                BoxShadow(
                  color: Colors.cyanAccent,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(20), //<-- SEE HERE
                    ),
                    child: Image.asset('../images/cracks.jpg', fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){
                      mostrarNotificacion();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFA7FFEB),
                              Color(0xFF64FFDA),
                              Color(0xFF80DEEA)
                            ]),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Notificación',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
