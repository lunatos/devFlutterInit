import 'dart:js_util';
import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:lista_wpp/infoTela.dart';
import 'Contato.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    //não tinha certeza de onde declarar essa lista ai foi aqui mesmo
    //inicializando a lista de 15 contatos
    List<Contato> listContatos = [];
    final formatoDoNumero = NumberFormat('#####-####', 'pt_BR');
    final random = Random();
    for (int i = 1; i < 16; i++) {
      final numero =
          formatoDoNumero.format(random.nextInt(900000000) + 100000000);
      String nome = "${faker.person.firstName()} ${faker.person.lastName()}";
      listContatos.add(Contato(Image.asset("imagens/1.jpg"), nome,
          numero)); //foi a unica imagem que eu consegui abrir com flutter, e olha que eu tentei com 15 diferentes, todas .jpg
    }

    return Scaffold(
      body: Column(
        children: listContatos
            .map((e) => Card(
                elevation: 5,
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    e.imagem,
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoTela(contato: e)));
                        },
                        child: const Text('Abrir contato'))
                  ],
                )))
            .toList(),
      ),
    );
  }
}
