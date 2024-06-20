import 'package:flutter/material.dart';

class TelaSecundaria extends StatelessWidget {
  String parametro;
  TelaSecundaria(this.parametro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            ElevatedButton(child: Text("Tela Anterior"), onPressed: () {}),
            Text(parametro)
          ],
        ),
      ),
    );
  }
}
