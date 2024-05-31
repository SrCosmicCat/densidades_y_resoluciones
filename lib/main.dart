import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Density Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
              Text('Las medidas en Flutter se miden en LP (logical pixels), por lo que son iguales en todos los dispositivos.'),
              Text('El tamaño de fuente por defecto es de 14 LP.'),
              Text('El tamaño de fuente de este texto es de 24 LP.', style: TextStyle(fontSize: 24)),
              Text('El tamaño de fuente de este texto es de 48 LP.', style: TextStyle(fontSize: 48)),
              // tamaño de la pantalla
              Text('El ancho de la pantalla es de ${MediaQuery.of(context).size.width} LP.'),
              Text('El alto de la pantalla es de ${MediaQuery.of(context).size.height} LP.'),
              // densidad de pantalla
              Text('La densidad de la pantalla es de ${MediaQuery.of(context).devicePixelRatio} DP.'),
              // el factor de escala de texto
              Text('El factor de escala de texto es de ${MediaQuery.of(context).textScaler}.'),
          ],
        ),
      ),
    );
  }
}
