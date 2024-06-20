import 'package:flutter/material.dart';
import 'package:navegacao_cc/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: "/",
      routes: {"/secundaria": (context) => TelaSecundaria("Artur Mandou!!")},
      home: MyApp()));
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton(
                child: Text("Próxima tela"),
                onPressed: () {
                  Navigator.pushNamed(context, "/secundaria");
                })
          ],
        ),
      ),
    );
  }
}
