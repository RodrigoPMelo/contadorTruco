import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Cont_truco(),
      debugShowCheckedModeBanner: false,
    ));

class Cont_truco extends StatefulWidget {
  const Cont_truco({Key? key}) : super(key: key);
  @override
  State<Cont_truco> createState() => _Cont_truco();
}

class _Cont_truco extends State<Cont_truco> {
  Text _text =
      const Text("Esta rodada vale 1 ponto.", style: TextStyle(fontSize: 30));
  var contapontoA = 0;
  var contapontoB = 0;
  var nropartidaA = 0;
  var nropartidaB = 0;
  var contador = 1;
  var contadortruco = 0;
  String truco = '';
  var valorRodada = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                reset();
              },
              icon: const Icon(Icons.refresh))
        ],
        title: const Text('Contador de Truco'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: montaBody()),
    );
  }

  void contaPontos(cont) {
    if (contador == 1) {
      cont++;
    } else if (contador == 3) {
      cont + 3;
    } else if (contador == 6) {
      cont + 6;
    } else if (contador == 9) {
      cont + 9;
    } else {
      cont + 12;
    }
  }

  void reset() {
    setState(() {
      contapontoA = 0;
      contapontoB = 0;
      nropartidaA = 0;
      nropartidaB = 0;
    });
  }

  void resetapontos() {
    setState(() {
      contapontoA = 0;
      contapontoB = 0;
    });
  }

  void verificaganhador() {
    setState(() {
      if ((contapontoA >= 12) || (contapontoB >= 12)) {
        if (contapontoA >= 12) {
          abrirMensagem();
          nropartidaA++;
        } else {
          abrirMensagem();
          nropartidaB++;
        }
      }
    });
  }

  void abrirMensagem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Você Ganhou'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  resetapontos();
                },
                child: const Text("Jogar outra partida")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  reset();
                },
                child: const Text("Começar denovo"))
          ],
        );
      },
    );
  }

  void verificaTruco() {
    setState(() {
      if (truco != '') {
        if (truco == 'TRUCO MARRECO') {
          valorRodada = 'Essa Rodada vale 3 pontos';
          contador + 3;
        } else if (truco == 'SEIS LADRÃO') {
          valorRodada = 'Essa Rodada vale 6 pontos';
          contador + 6;
        } else if (truco == 'NOVE ENTÃO') {
          valorRodada = 'Essa Rodada vale 9 pontos';
          contador + 9;
        } else {
          valorRodada = 'Essa Rodada vale 12 pontos';
          contador + 12;
        }
      }
    });
  }

  TextButton botaoTruco() {
    return TextButton(onPressed: atribuirtruco(), child: Text(truco));
  }

  atribuirtruco() {
    setState(() {
      if (contadortruco != 0) {
        if (contadortruco == 1) {
          truco = 'TRUCO MARRECO';
        } else if (contadortruco == 2) {
          truco = 'SEIS LADRÃO';
        } else if (contadortruco == 3) {
          truco = 'NOVE ENTÃO';
        } else {
          truco = 'DOZE PRA ACABAR';
        }
      }
    });

    void verificaPontos() {
      if (contador != 1) {
        contador = 1;
        valorRodada = 'Essa Rodada vale 1 ponto';
        truco = '';
      }
      ;
    }
  }

  montaBody() {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(padding: const EdgeInsets.all(25.0), child: _text),
      Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'NÓS',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'ELES',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ])),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: IconButton(
                  onPressed: (() {
                    contaPontos(contapontoA);
                  }),
                  iconSize: 30,
                  icon: Image.asset(
                    '../images/copas.png',
                    width: 50,
                    height: 20,
                  ))),
        ],
      ),
    ]));
  }
}
