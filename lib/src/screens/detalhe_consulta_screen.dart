import 'package:flutter/material.dart';
import '../models/models.dart';

class DetalheConsultaScreen extends StatelessWidget {
  final Consulta consulta;

  const DetalheConsultaScreen({super.key, required this.consulta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes da Consulta')),
      body: Center(child: Text('Consulta com ID: ${consulta.id}')),
    );
  }
}
