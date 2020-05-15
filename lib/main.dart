import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
import "./resultado.dart";

main() =>
    runApp(new PerguntaApp()); //Utilizando a funcao arrow para iniciar o app

class _PerguntaAppState extends State<PerguntaApp> {
  //Classe para gerenciar o estado
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Gato', 'pontuacao': 3},
        {'texto': 'Cachorro', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu nome ?',
      'respostas': [
        {'texto': 'Augusto', 'pontuacao': 10},
        {'texto': 'Paula', 'pontuacao': 5},
        {'texto': 'Renata', 'pontuacao': 3},
        {'texto': 'Marcelo', 'pontuacao': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    //O metodo responder precisa estar aqui, pois ele ira manipular o valor da variavel
    if (temPerguntasSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntasSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //O metodo build precisa estar dentro da classe que controla o estado, pois ela depende do estada da aplicacao para ser reinderizada

    return MaterialApp(
      //Criaca de um Widget; Um Widget filho do PerguntaApp
      //home: Text('Ola Flutter!!'), //home eh um parametro nomeado e text eh um pametro posicional. Os parametros posicionais sao obrigatorios e os nomeados podem eventualmente ter um valor padrao
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntasSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  //Classe que extende de um componente com estado.

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
