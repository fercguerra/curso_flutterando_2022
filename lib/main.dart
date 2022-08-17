import 'package:flutter/material.dart';

//widget: representa toda a tela do celular ou uma parte dela, em formato de árvore, ou seja, um dentro do outro

//Flutter é declarativo pois utiliza linguagem de programação e não de marcação para desenhar telas

void main() {
  //classe abstrata não é instanciável, precisa ser extendida, implementada ou herdada
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('Flutterando')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Clicou');
        },
      ),
    );
  }
}
