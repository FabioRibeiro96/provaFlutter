import 'package:flutter/material.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu'), centerTitle: true),
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: EdgeInsets.all(40),

        //
        // LISTVIEW
        //
        child: ListView(
          children: [
            Text(
              'Selecione a opção desejada:',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 40),
            ListTile(
              title: Text('Sobre',
                  style: TextStyle(fontSize: 32, color: Colors.black)),
              subtitle: Text('Clique aqui para mais informações sobre nós',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic)),
              onTap: () {
                print('item pressionado');
                Navigator.pushNamed(context, '/sobre');
              },
              hoverColor: Colors.blue[100],
            ),
            ListTile(
              title: Text('Carros',
                  style: TextStyle(fontSize: 32, color: Colors.black)),
              subtitle: Text('Clique aqui para visualizar nossos produtos',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic)),
              onTap: () {
                print('item pressionado');
                Navigator.pushNamed(context, '/carros');
              },
              hoverColor: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
