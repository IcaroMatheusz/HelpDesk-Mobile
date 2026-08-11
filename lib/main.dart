import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text('HelpDesk Mobile')],
          ), //titulo da pagina, tentei deixar ele centralizado no meio
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //anotar sobre isso, n faco ideia oq é? alinhamento do eixo principal?? acho que é pra deixar a coluna alinhada
            children: [
              const Text(
                'Bem vindo, Técnico',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20), //funciona a margin

              const Text(
                // outro texto
                'Chamados em aberto: 5',
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: const Text('🟢 2')),

                  const SizedBox(width: 20),

                  Container(child: const Text('🔴 5')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
