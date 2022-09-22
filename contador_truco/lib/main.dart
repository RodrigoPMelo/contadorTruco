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
<<<<<<< HEAD
  // Text _text =  Text(valorRodada,
  //     style: TextStyle(fontSize: 50.0, fontFamily: "Sans Serif"));

  var contaPontoA = 0;
  var contaPontoB = 0;
  var contadorRodada = 1;
  var trucoString = 'TRUCO MARRECO';
  var valorRodada = 'Esta rodada vale 1 ponto';
  
  var trucoButton;
=======
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
>>>>>>> main

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

<<<<<<< HEAD
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
    verificaganhador();
    return cont;
=======
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
>>>>>>> main
  }

  void reset() {
    setState(() {
<<<<<<< HEAD
      contaPontoA = 0;
      contaPontoB = 0;
      contadorRodada = 1;
      valorRodada = 'Esta rodada vale 1 ponto';
      trucoString = 'TRUCO MARRECO';
=======
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
>>>>>>> main
    });
  }

  void verificaganhador() {
    setState(() {
<<<<<<< HEAD
      if ((contaPontoA >= 12) || (contaPontoB >= 12)) {
        if (contaPontoA >= 12) {
          abrirMensagem();
        } else {
          abrirMensagem();
=======
      if ((contapontoA >= 12) || (contapontoB >= 12)) {
        if (contapontoA >= 12) {
          abrirMensagem();
          nropartidaA++;
        } else {
          abrirMensagem();
          nropartidaB++;
>>>>>>> main
        }
      }
    });
  }

  void abrirMensagem() {
    showDialog(
<<<<<<< HEAD
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Você Ganhou',
            textAlign: TextAlign.center,
          ),
=======
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Você Ganhou'),
>>>>>>> main
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
<<<<<<< HEAD
=======
                  resetapontos();
                },
                child: const Text("Jogar outra partida")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
>>>>>>> main
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
<<<<<<< HEAD
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
=======
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
>>>>>>> main
      }
    });
  }

<<<<<<< HEAD
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
                          verificaganhador();
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
                            verificaganhador();
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
=======
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
>>>>>>> main
    ]));
  }
}
