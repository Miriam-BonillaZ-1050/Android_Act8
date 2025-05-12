import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5E2EA),
      body: Column(
        children: [
          _Header(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Inicio de Sesion',
                    style: TextStyle(fontSize: 24, fontFamily: 'Cursive')),
                SizedBox(height: 20),
                _InputField(label: 'Nombre de Usuario:'),
                _InputField(label: 'Contraseña:', obscure: true),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/profile'),
                  style: _blueButtonStyle(),
                  child: Text('Iniciar Sesion'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: _buttonStyle(Colors.yellow[200]!, Colors.brown),
                  child: Text('Inicio de Sesion como Administrador'),
                ),
                SizedBox(height: 20),
                Text('¿No tienes una cuenta registrada?\nRegistrate Aquí:',
                    textAlign: TextAlign.center),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  style: _buttonStyle(Colors.green[200]!, Colors.black),
                  child: Text('Registrar cuenta'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5F7F97),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 8),
          Text('Pumas Jrz',
              style: TextStyle(
                  fontFamily: 'Cursive', fontSize: 22, color: Colors.white)),
          Spacer(),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final String label;
  final bool obscure;

  const _InputField({required this.label, this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontFamily: 'Cursive', fontSize: 16)),
        SizedBox(height: 5),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

ButtonStyle _blueButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[200],
    foregroundColor: Colors.black,
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}

ButtonStyle _buttonStyle(Color color, Color textColor) {
  return ElevatedButton.styleFrom(
    backgroundColor: color,
    foregroundColor: textColor,
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
