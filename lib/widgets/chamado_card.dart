import 'package:flutter/material.dart';

class ChamadoCard extends StatelessWidget {
  final String titulo;
  final String empresa;

  const ChamadoCard({super.key, required this.titulo, required this.empresa});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: ListTile(
        leading: Text('🟢'),
        title: Text(titulo, style: TextStyle(color: Colors.white)),
        subtitle: Text(empresa, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
