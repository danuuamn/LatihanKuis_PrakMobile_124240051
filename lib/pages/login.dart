import 'package:flutter/material.dart';
import '../models/userModels.dart';
import 'library.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLoggedin = false;

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (users.any(
      (user) => user.email == email && user.password == password,
    )) {
      setState(() {
        isLoggedin = true;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Berhasil"),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login gagal: email atau password kalian salah"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(title: Text("Login Page", style: TextStyle(color: Colors.deepPurple))),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Page", style: TextStyle(fontSize: 24, color: Colors.white)),
              SizedBox(height: 50),
              _emailField(_emailController),
              SizedBox(height: 20),
              _passwordField(_passwordController),
              SizedBox(height: 30),
              ElevatedButton(onPressed: _login, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailField(TextEditingController emailController) {
  return Container(
    child: TextField(
      controller: emailController,
      enabled: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "email kamu",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _passwordField(TextEditingController controller) {
  return Container(
    child: TextField(
      controller: controller,
      obscureText: true,
      enabled: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "password kamu",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}
