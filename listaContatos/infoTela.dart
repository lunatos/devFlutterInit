import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Contato.dart';

class InfoTela extends StatelessWidget {
  final Contato contato;

  const InfoTela({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações do contato'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: ${contato.nome}'),
            Text('Telefone: ${contato.numero}')
          ],
        ),
      ),
    );
  }
}
