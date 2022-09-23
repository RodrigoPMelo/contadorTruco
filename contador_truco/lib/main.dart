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
  // Text _text =  Text(valorRodada,
  //     style: TextStyle(fontSize: 50.0, fontFamily: "Sans Serif"));

  var contaPontoA = 0;
  var contaPontoB = 0;
  var contadorRodada = 1;
  var trucoString = 'TRUCO MARRECO';
  var valorRodada = 'Esta rodada vale 1 ponto';
  
  var trucoButton;

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

  int somaPontos(cont) {
    setState(() {
      if (contadorRodada == 1) {
        cont++;
      } else if (contadorRodada == 3) {
        cont += 3;
        contadorRodada = 1;
        valorRodada = 'Esta rodada vale 1 ponto';
        trucoString = 'TRUCO MARRECO';
      } else if (contadorRodada == 6) {
        cont += 6;
        contadorRodada = 1;
        valorRodada = 'Esta rodada vale 1 ponto';
        trucoString = 'TRUCO MARRECO';
      } else if (contadorRodada == 9) {
        cont += 9;
        contadorRodada = 1;
        valorRodada = 'Esta rodada vale 1 ponto';
        trucoString = 'TRUCO MARRECO';
      } else {
        cont += 12;
        contadorRodada = 1;
        valorRodada = 'Esta rodada vale 1 ponto';
        trucoString = 'TRUCO MARRECO';
      }
    });
    verificaGanhador();
    return cont;
  }

  void reset() {
    setState(() {
      contaPontoA = 0;
      contaPontoB = 0;
      contadorRodada = 1;
      valorRodada = 'Esta rodada vale 1 ponto';
      trucoString = 'TRUCO MARRECO';
    });
  }

  void verificaGanhador() {
    setState(() {
      if ((contaPontoA >= 12) || (contaPontoB >= 12)) {
        if (contaPontoA >= 12) {
          abrirMensagem();
        } else {
          abrirMensagem();
        }
      }
    });
  }

  void abrirMensagem() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Você Ganhou',
            textAlign: TextAlign.center,
          ),
          actions: [
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
      if (trucoString == 'TRUCO MARRECO') {
        trucoString = 'SEIS LADRÃO';
        valorRodada = 'Esta Rodada vale 3 pontos';
        contadorRodada = 3;
      } else if (trucoString == 'SEIS LADRÃO') {
        trucoString = 'NOVE ENTÃO';
        valorRodada = 'Esta Rodada vale 6 pontos';
        contadorRodada = 6;
      } else if (trucoString == 'NOVE ENTÃO') {
        trucoString = 'DOZE PRA ACABAR';
        valorRodada = 'Esta Rodada vale 9 pontos';
        contadorRodada = 9;
      } else if (trucoString == 'DOZE PRA ACABAR') {
        trucoString = 'VALENDO TUDO!';
        valorRodada = 'Esta Rodada vale 12 pontos';
        contadorRodada = 12;
      }
    });
  }

  montaBody() {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(valorRodada,
              style:
                  const TextStyle(fontSize: 25.0, fontFamily: "Sans Serif"))),
        ],),
      Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'NÓS     ',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    '   ELES',
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
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 5)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: IconButton(
                        onPressed: (() {
                          contaPontoA = somaPontos(contaPontoA);
                          verificaGanhador();
                        }),
                        splashRadius: 1,
                        iconSize: 70,
                        icon: Image.asset(
                          '../images/zap.png',
                        ))),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 75.0, vertical: 30.0),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 5))),
                  child: Text(
                    contaPontoA.toString(),
                    style: const TextStyle(
                        fontSize: 50.0, fontFamily: "Sans Serif"),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: IconButton(
                        onPressed: (() {
                          setState(() {
                            if (contaPontoA == 0) {
                              return;
                            }
                            contaPontoA--;
                          });
                        }),
                        splashRadius: 1,
                        iconSize: 70,
                        icon: Image.asset(
                          '../images/espada.png',
                        ))),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, style: BorderStyle.solid, width: 5)),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: IconButton(
                          onPressed: (() {
                            contaPontoB = somaPontos(contaPontoB);
                            verificaGanhador();
                          }),
                          splashRadius: 1,
                          iconSize: 70,
                          icon: Image.asset(
                            '../images/copas.png',
                          ))),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 75.0, vertical: 30.0),
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 5))),
                    child: Text(
                      contaPontoB.toString(),
                      style: const TextStyle(
                          fontSize: 50.0, fontFamily: "Sans Serif"),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              if (contaPontoB == 0) {
                                return;
                              }
                              contaPontoB--;
                            });
                          }),
                          splashRadius: 1,
                          iconSize: 70,
                          icon: Image.asset(
                            '../images/ouros.png',
                          ))),
                ],
              ))
        ],
      ),
      Container(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                  onPressed: () {
                    verificaTruco();
                  },
                  child: Text(trucoString,
                      style: const TextStyle(
                          fontSize: 50.0, fontFamily: "Sans Serif")))))
    ]));
  }
}
