import 'package:flutter/material.dart';
import 'widgets/chamado_card.dart';

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

              const Text('Chamados em aberto: 5'),

              const SizedBox(height: 20), //funciona a margin

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                      child: const Text(
                        'FINALIZADOS: 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                      child: const Text(
                        'NÃO FINALIZADOS: 5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20), //funciona a margin

              const Text(
                'ÚLTIMOS CHAMADOS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),

              Column(
                children: [
                  ChamadoCard(
                    titulo: 'Impressora com erro',
                    empresa: 'Empresa X',
                    status: StatusChamado.aberto,
                  ),

                  const SizedBox(height: 20), //funciona a margin

                  ChamadoCard(
                    titulo: 'Sistema com problemas no acesso',
                    empresa: 'Empresa Y',
                    status: StatusChamado.resolvido,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
