import 'package:flutter/material.dart';

class SobreTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sobre"),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text('Tema escolhido',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text('Vendas de carro ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ),
                SizedBox(height: 20),
                ListTile(
                  title: Text('Objetivo do aplicativo',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text(
                      'Facilitar a procura por carros usados, contendo anuncios dos mesmos',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ),
              ],
            ),
          ),
        ));
  }
}
