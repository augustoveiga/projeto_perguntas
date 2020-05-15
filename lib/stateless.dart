/*
import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp()); //Utilizando a funcao arrow para iniciar o app

class PerguntaApp extends StatelessWidget { //Criacao de uma classe que extende um componente sem estado (StatelessWidget). O PerguntaApp eh o Widget raiz/pai de nossa aplicacao

  var _perguntaSelecionada = 0; //Quando colocamos uma variavel direto dentro da classe comecamos a trabalhar com estado dentro de uma componente sem estado!!!!!! Adicionalmente, estamos violando o Widget Stateless. Logo, nossa aplicacao nao funciona visualmente... O indice incrementa, mas nao muda a pergunta
  //final _perguntaSelecionada = 0; //neste caso nao tem problema, pois o valor e imutavel e final desta variavel.

  void _responder() { //Metodo responder
    _perguntaSelecionada++;  
    print(_perguntaSelecionada);
  }
  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual eh a sua cor favorita?',
      'Qual eh o seu animal favorito?'
    ];

    return MaterialApp( //Criaca de um Widget; Um Widget filho do PerguntaApp
      //home: Text('Ola Flutter!!'), //home eh um parametro nomeado e text eh um pametro posicional. Os parametros posicionais sao obrigatorios e os nomeados podem eventualmente ter um valor padrao
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder, //Precisamos passar uma funcao como parametro da classe RaisedButton, por este motivo nao colocamos os ().
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () { //Funcao void
                print('Resposta 2 foi selecionada');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!!!'), //Funcao Arrow
            ),
            RaisedButton(
              child: Text('Resposta 4'),
              onPressed: null, //Botao desabilitado
            ),
          ],
        )
      ),
    );
  }
}
*/
