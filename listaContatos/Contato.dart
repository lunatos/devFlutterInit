import 'package:flutter/material.dart';

class Contato {
  final String _numero;
  final String _nome;
  final Image _imagem;

  Contato(this._imagem, this._nome, this._numero);

  String get numero => _numero;
  String get nome => _nome;
  Image get imagem => _imagem;
}
