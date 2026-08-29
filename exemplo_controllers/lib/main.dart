import 'package:flutter/material.dart';
import 'principal.dart';
import 'creditos.dart';
import 'calculo_media.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Controllers",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      routes: <String, WidgetBuilder>{
        '/CalculoMedia': (BuildContext context) => CalculoMedia(),
        '/Creditos': (BuildContext context) => Creditos(),
      },
      home: Principal(),
    );
  }
}
