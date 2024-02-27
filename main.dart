import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('login'),
          backgroundColor: Colors.red, 
        ),
        body: Center(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Nom d\'utilisateur',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              String username = _usernameController.text;
              String password = _passwordController.text;
              print('Nom d\'utilisateur: $username');
              print('Mot de passe: $password');
            },
            child: Text('Connexion'),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              print('Mot de passe oublié ?');
            },
            child: Text('Mot de passe oublié ?'),
          ),
        ],
      ),
    );
  }
}
