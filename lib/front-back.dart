import 'dart:math';
import 'package:flutter/material.dart';

//front do app
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  var _imagens = [
    'image/bender.jpeg',
    'image/benderradical.jpg',
    'image/futuroproximo.webp',
    'image/benderfly.webp',
    'image/futuro.webp',
    'image/dartfuturama.jpg',
  ];

  //back do app
//array de frases para ser exibida de forma aleatória
  var _frases = [
    'Amo sua inteligência artificial e seus simulados de sinceridade',
    'Só porque um robô quer matar humanos, isso não o torna um radical',
    'Meu Deus, é o futuro',
    'O que interessa para que você foi programado, se você fosse programado para pular de uma ponte você pularia? Fly pergunta... Bender fazendo varredura em seu HD... SIM!',
    'Terráqueos ainda não sabem o significado da facilidade, otimização e agilidade do Flutter',
    'Que coisa rápida e flexível é essa? JavaScript? Não! Dart!!!',
  ];
  var _imagensGerada = 'image/futuramalogo.jpg';
  var _frasesGerada = 'Clique abaixo para gerar uma frase!';//o text depois da imagem da logo, para chamar a função gerarfrase

  void _gerarFrase(){//função de gerar a frase aleatória
    //numero sorteado irá pegar aleatóriamente de 0,1,2,3 das frases do array

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um importe do tipo import 'dart:math';
    //o random é responsavel por exibir o array de forma aleatória
    setState((){
      _frasesGerada = _frases[numeroSorteado];
      _imagensGerada = _imagens[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases Futuristicas'),
        backgroundColor: Colors.lightBlue[900], //cor do appBar
      ),
      body: Center(//centralizar o body
        child: Container(
          padding: EdgeInsets.all(16),//espaçamento appbar para o body
          child: Column(//verticalizar os elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround, //spacearond= entre os espaços
            crossAxisAlignment: CrossAxisAlignment.center,//centralizar o espaçamento
            children: <Widget>[
              Image.asset(_imagensGerada//imagem logo
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(//botão para gerar frases.
                onPressed: _gerarFrase,//colocar a função array de frases aleatórias
                child: Text('Nova Frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}