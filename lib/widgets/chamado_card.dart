import 'package:flutter/material.dart';

class ChamadoCard extends StatelessWidget {
  final String titulo;

  const ChamadoCard({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text(
        titulo,
        style: TextStyle(
          color: Colors.white
        ),
        ),
    );
  }
}
