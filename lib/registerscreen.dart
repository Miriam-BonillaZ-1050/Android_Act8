import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
                Text('Registrar Cuenta',
                    style: TextStyle(fontSize: 24, fontFamily: 'Cursive')),
                SizedBox(height: 20),
                _InputField(label: 'Nombre(s):'),
                _InputField(label: 'Apellidos(s):'),
                _InputField(label: 'Direccion:'),
                _InputField(label: 'Correo Electronico:'),
                _InputField(label: 'Contraseña:', obscure: true),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[100],
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(12),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/profile'),
                      child: Text('Registrar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200],
                        foregroundColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ],
                )
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
    return Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontFamily: 'Cursive', fontSize: 16)),
          SizedBox(height: 5),
          TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
