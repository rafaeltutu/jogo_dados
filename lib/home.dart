import 'dart:math';
import 'package:flutter/material.dart';
import 'Dart:math';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var numeroDadoEsquerdo = 1;
  var numeroDadoDireito = 4;
  //print(numeroDadoDireito);

  alteraImage() {
    //var geranum = new Random();
    //numeroDadoDireito = 2;
    numeroDadoDireito = Random().nextInt(6)+1;
    numeroDadoEsquerdo = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        title: Text('Dadooos'),
        backgroundColor: Colors.black26,
      ),
      body: Center(

        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    alteraImage();
                  });
                  print('Dado esquerdo Presionado');
                },
                child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'),
              ),
              //width: 150.0,
            ),
            Expanded(
              flex: 4,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    alteraImage();
                  });
                  print('Dado direiro Presionado');
                  print(numeroDadoDireito);
                },
                child: Image.asset('imagens/dado$numeroDadoDireito.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
