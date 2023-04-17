import 'package:flutter/material.dart';

void main() => runApp(const vistados());

class vistados extends StatelessWidget {
  const vistados({super.key});

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
              Text(
                'BIENVENIDO',
                style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Container(
                  width: 180.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      'images/user.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Text(
                'NOMBRES:',
                style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              Divider(
                height: 5.0,
              ),
              TextField(
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'FELIPE CAICEDO',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 5.0,
              ),
              Text(
                'CIUDAD:',
                style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              Divider(
                height: 5.0,
              ),
              TextField(
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'BOGOTA',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 5.0,
              ),
              Text(
                'EDAD:',
                style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              Divider(
                height: 5.0,
              ),
              TextField(
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: '30',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
