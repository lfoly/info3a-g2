import 'package:flutter/material.dart';

class ExemploSimpleDialog extends StatefulWidget {
  const ExemploSimpleDialog({super.key});

  @override
  State<ExemploSimpleDialog> createState() => _ExemploSimpleDialogState();
}

class _ExemploSimpleDialogState extends State<ExemploSimpleDialog> {
  var opcaoEscolhida = "";

  void atualizarOpcao(String valor) {
    setState(() {
      opcaoEscolhida = valor;
    });
  }
  //void atualizarOpcao(String valor) => setState(() => opcaoEscolhida = valor);

  Future mostrarMensagem() async {
    SimpleDialog msg = SimpleDialog(
      title: Text("Escolha uma opção"),
      children: [
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, "Opção 1");
          },
          child: Text("Opção 1"),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, "Opção 2");
          },
          child: Text("Opção 2"),
        ),
      ],
    );
    opcaoEscolhida = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return msg;
      },
    );
    atualizarOpcao(opcaoEscolhida);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Simple Dialog")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                mostrarMensagem();
              },
              child: const Text("Simple Dialog"),
            ),
            Text("Opção Escolhida: $opcaoEscolhida"),
          ],
        ),
      ),
    );
  }
}
