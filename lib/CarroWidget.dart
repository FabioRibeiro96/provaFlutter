import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {
  final String marca;
  final String modelo;
  final String foto;

  CarroWidget(this.marca, this.modelo, this.foto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),

      //espaçamento
      padding: EdgeInsets.all(20),

      //borda
      decoration: BoxDecoration(
        color: Colors.grey[400],
        border: Border.all(
          color: Colors.grey[600],
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child: Column(
        children: [
          Text(marca, style: Theme.of(context).textTheme.bodyText1),
          Text(modelo, style: Theme.of(context).textTheme.bodyText1),
          //Image.asset(foto)
          Image.asset(foto, scale: 3.4, fit: BoxFit.cover)
        ],
      ),
    );
  }
}
