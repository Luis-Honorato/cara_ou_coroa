import 'package:cara_ou_coroa/main.dart';
import 'package:flutter/material.dart';

class PaginaResultado extends StatefulWidget {
  var moeda;
  PaginaResultado(this.moeda, {Key? key}) : super(key: key);
  


  @override
  State<PaginaResultado> createState() => _PaginaResultadoState();
}

class _PaginaResultadoState extends State<PaginaResultado> {

  void _voltar(){

    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61db86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [interface()]
        )
    );
  }
  Widget interface() => Column(
    children: [
      widget.moeda,
      const Padding(padding: EdgeInsets.all(16)),
      GestureDetector(
        child: Image.asset('assets/images/botao_voltar.png'),
        onTap: _voltar
      )
    ],
  );
}