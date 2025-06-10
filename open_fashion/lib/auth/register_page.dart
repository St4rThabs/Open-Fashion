import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _message = '';

  Future<void> _register() async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      setState(() {
        _message = 'Usuário registrado com sucesso!';
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        if (e.code == 'weak-password') {
          _message = 'A senha fornecida é muito fraca.';
        } else if (e.code == 'email-already-in-use') {
          _message = 'Este e-mail já está em uso.';
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
      appBar: AppBar(title: Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe um e-mail válido';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'A senha deve ter pelo menos 6 caracteres';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _register();
                  }
                },
                child: Text('Registrar'),
              ),
              SizedBox(height: 16),
              Text(_message, style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
