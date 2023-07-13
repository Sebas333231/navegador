import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Segunda pestaña'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/avanza');
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                )),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Terminos y condiciones',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y "
                        "archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las "
                        "industrias desde el año 1500, cuando un impresor (N. del T. persona que se "
                        "dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal "
                        "manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, "
                        "sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando "
                        "esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "
                        ", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, "
                        "como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Volver'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
