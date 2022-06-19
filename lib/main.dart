import 'package:cara_ou_coroa/pagina_resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp( const MaterialApp(

    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var moeda;

  void _sortear(){

   int valor = Random().nextInt(2);

   if(valor == 0) moeda = Image.asset('assets/images/moeda_coroa.png');
   else moeda = Image.asset('assets/images/moeda_cara.png');

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: ((context) => PaginaResultado(moeda))
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff61db86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [interface()]
        )
    );
  }
  Widget interface() => Column(
    children: [
      Image.asset('assets/images/logo.png'),
      const Padding(padding: EdgeInsets.all(16)),
      GestureDetector(
        child: Image.asset('assets/images/botao_jogar.png'),
        onTap: _sortear
      )
    ],
  );
}