import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Register.dart';
import 'Servico.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.work_outline,
                size: 80,
                color: Colors.blueGrey,
              ),
              SizedBox(height: 16),
              Text(
                'Bem-vindo de volta!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800],
                ),
              ),
              SizedBox(height: 32),
              _buildTextField('E-mail', Icons.email, false),
              SizedBox(height: 16),
              _buildTextField('Senha', Icons.lock, true),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServicesView()),
                  );
                  // Lógica de login
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Lógica para resetar senha
                },
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de registro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
                },
                child: Text(
                  'Não tem conta? Registre-se',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.blueGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
