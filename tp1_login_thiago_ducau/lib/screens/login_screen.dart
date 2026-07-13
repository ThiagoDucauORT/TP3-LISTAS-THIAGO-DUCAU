import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Lista de usuarios hardcodeada
  final Map<String, String> usuariosValidos = {
    'admin@gmail.com': 'Admin123',
    'usuario1': 'Clave123',
    'thiago@gmail.com': 'Thiago123',
  };

  String? errorEmail;
  String? errorPassword;
  String? errorLogin;

  void validar() {
    setState(() {
      errorEmail = null;
      errorPassword = null;
      errorLogin = null;

      String email = emailController.text.trim();
      String password = passwordController.text;

      if (email.isEmpty) {
        errorEmail = "Ingresa tu usuario o email";
      }

      if (password.isEmpty) {
        errorPassword = "Ingresa tu contraseña";
      }

      if (errorEmail == null && errorPassword == null) {
        if (usuariosValidos[email] == password) {
          // Uso de GoRouter para navegar a Home
          context.go('/home', extra: email);
        } else {
          errorLogin = "Usuario o contraseña incorrectos";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar sesión")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Bienvenido",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Usuario o Email",
                border: const OutlineInputBorder(),
                errorText: errorEmail,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña",
                border: const OutlineInputBorder(),
                errorText: errorPassword,
              ),
            ),
            const SizedBox(height: 12),
            if (errorLogin != null)
              Text(
                errorLogin!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: validar,
              child: const Text("Ingresar"),
            ),
          ],
        ),
      ),
    );
  }
}