import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  //Aplicando Estilo ao Widget Questao
  //option+shift+f -> ajuda na formatacao
  @override
  Widget build(BuildContext context) {
    return Container( //Envolvemos o texto em um container
      width: double.infinity, //valor maximo do double e serve para alinhar o texte dentro do container
      margin: EdgeInsets.all(20), //podemos trabalhar essa opcao e passar um unico tamana para aplicar nas margens OU podemos usar o fromLTRB - Left,Top,Right,Bottom e atribuir valores individualmente
      child: Text(
        texto,
        style: TextStyle(fontSize: 28), //style eh uma propriedade nomeada. Definimos o tamanho da fonte
        textAlign: TextAlign.center, //Alinhamos ao centro, no entanto, antes precisamos envolver dentro de um container
      ),
    );
  }
}
