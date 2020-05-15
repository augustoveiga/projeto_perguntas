import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoResponder;

  Questionario({
    @required this.perguntas, //@required eh um decorate, serve para dizer que sao parametros obrigatorios a serem passados
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  });

  bool get temPerguntasSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntasSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) { 
          return Resposta(
            resp['texto'], 
            () => quandoResponder(resp['pontuacao']),
          ); 
        }).toList(), //peguei as respostas que eh uma lista de string, utilizamos o map para transforma a lista de string em uma lista de widgets, depois o utilizamos o .toList para transformar em uma lista. Por fim, utilizamos o spread para pegar cada elemento da lista e jogar dentro da lista que sao filhos (children:) do elemento Column
      ],
    );
  }
}
