import 'package:flutter/material.dart';

enum StatusChamado { aberto, atendimento, resolvido }

class ChamadoCard extends StatelessWidget {
  final String titulo;
  final String empresa;
  final StatusChamado status;

  const ChamadoCard({
    super.key,
    required this.titulo,
    required this.empresa,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: ListTile(
        leading: Text(
          status == StatusChamado.aberto
              ? '🔴'
              : status == StatusChamado.atendimento
              ? '🟡'
              : '🟢',
        ),
        title: Text(titulo, style: TextStyle(color: Colors.white)),
        subtitle: Text(empresa, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
