import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:open_fashion/pages/main_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _message = '';

  Future<void> _login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );

      // Login bem-sucedido, navega para a HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Main()),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        if (e.code == 'user-not-found') {
          _message = 'Usuário não encontrado.';
        } else if (e.code == 'wrong-password') {
          _message = 'Senha incorreta.';
        } else {
          _message = 'Erro: ${e.message}';
        }
      });
    } catch (e) {
      setState(() {
        _message = 'Erro inesperado: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe um e-mail válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe a senha';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _login();
                  }
                },
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 16),
              Text(_message, style: const TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}