import 'dart:math';

import 'package:flutter/material.dart';


void main(){

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: true,

    home: InterfaceAppFrases(),


  ));

}


class InterfaceAppFrases extends StatefulWidget {
  @override
  _InterfaceAppFrasesState createState() => _InterfaceAppFrasesState();
}



class _InterfaceAppFrasesState extends State<InterfaceAppFrases> {
  int _numeroAleatorio = 0;
  List _frases = [
    'A amizade desenvolve a felicidade e reduz o sofrimento, duplicando a nossa alegria e dividindo a nossa dor. (Autor(a): Joseph Addison',
    'A vida é maravilhosa se não se tem medo dela. (Autor(a): Charles Chaplin)',
    'Quem quiser vencer na vida deve fazer como os seus sábios: mesmo com a alma partida, ter um sorriso nos lábios. (Autor(a): Dinamor)',
    'Ser feliz sem motivo é a mais autêntica forma de felicidade. (Autor(a): Carlos Drummond de Andrade)',
    'O mais feliz dos felizes é aquele que faz os outros felizes. (Autor(a): Alexandre Dumas)',
    'O prazer é a prova da natureza, o seu sinal da aprovação. Quando somos felizes, somos sempre bons, mas quando somos bons nem sempre somos felizes. (Autor(a): Oscar Wilde)',
    'A alegria do pobre, ainda que menos durável, é sempre mais intensa que a do rico. (Autor(a): Marquês de Maricá)',
    'Se temos a possibilidade de tornar mais feliz e mais sereno um ser humano, devemos fazê-lo sempre. (Autor(a): Hermann Hesse)',
    'Não tenho tempo pra mais nada, ser feliz me consome muito. (Autora(a): Clarice Lispector)',
  ];
  String _fraseGerada = '';

  void _gerarFraseAleatoria() {
    _numeroAleatorio = new Random().nextInt(_frases.length) ;

    //Atualiza informação
    setState(() {
      _fraseGerada = _frases[_numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Frase do Dia"),

      ),

      body: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),

          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Image.asset(
                "imagens/corujaFrases.png",
                //fit: BoxFit.fill,
              ),

              Text("Leia uma nova frase para alegrar o seu dia!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                _fraseGerada,
              ),
/*
              Text(
                _frases[_numeroAleatorio],
              ),
*/
            ],

          )
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),

          child: Row(
            children: <Widget>[

              FlatButton(
                color: Colors.blue,

                onPressed: (){
                  //print("Botão pressionado!");
                  _gerarFraseAleatoria();
                  },

                child: Text(
                  "nova frase",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),


              )

            ],
          ),
        ),

      ),

    );
  }
}
