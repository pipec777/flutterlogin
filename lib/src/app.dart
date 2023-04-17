import 'package:flutter/material.dart';
import 'package:flutter_login/src/vistados.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _nombre;
  late String _password;
  late bool _showError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.redAccent,
                backgroundImage: AssetImage('images/LOGO.png'),
              ),
              Divider(
                height: 20.0,
              ),
              Text(
                'LOGIN',
                style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              Divider(
                height: 25.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'USUARIO',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                },
              ),
              Divider(
                height: 18.0,
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'PASSWORD',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _password = valor;
                },
              ),
              Divider(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_nombre == 'Felipe' && _password == '1234') {
                    // Si el usuario y la contraseña son correctos, navegar al segundo widget
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => vistados()),
                    );
                  } else {
                    final snackBar = SnackBar(
                      content: Text('Credenciales incorrectas'),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text('Iniciar sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(280, 50),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
