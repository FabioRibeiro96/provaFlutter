import 'package:flutter/material.dart';

import 'CarroWidget.dart';

class CarrosTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Carros"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          CarroWidget('Audi', 'Q8', 'lib/imagens/audi_q8.jpg'),
          CarroWidget('Hyundai', 'Hb20', 'lib/imagens/hb20.jpg'),
          CarroWidget('Fiat', 'Toro', 'lib/imagens/toro.jpg'),
        ]),
      ),
    );
  }
}
