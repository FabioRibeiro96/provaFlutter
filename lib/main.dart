import 'package:flutter/material.dart';
import 'package:provaparcial/sobre.dart';
import 'carros.dart';
import 'menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegação',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginTela(),
      '/menu': (context) => MenuPrincipal(),
      '/sobre': (context) => SobreTela(),
      '/carros': (context) => CarrosTela(),
    },
  ));
}

//Login
class LoginTela extends StatefulWidget {
  @override
  _LoginTelaState createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
  var txtLogin = TextEditingController();
  var txtSenha = TextEditingController();
  var _formId = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(40),
          child: Form(
            key: _formId,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                SizedBox(height: 30),
                TextField(
                  controller: txtLogin,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Usuário',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: txtSenha,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton.icon(
                    label: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 24),
                    ),
                    icon: Icon(Icons.login),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Login relizado com sucesso!!!'),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.green,
                      ));
                      Navigator.pushNamed(context, '/menu');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
