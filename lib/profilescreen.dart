import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5E2EA),
      appBar: AppBar(
        backgroundColor: Color(0xFF5F7F97),
        title: Text('Perfil', style: TextStyle(fontFamily: 'Cursive')),
        actions: [
          Icon(Icons.account_circle_outlined, size: 28),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundColor: Colors.grey[300]),
            SizedBox(height: 20),
            Text('Usuario Ejemplo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Divider(height: 40, thickness: 2),
            _profileItem('Correo', 'usuario@correo.com'),
            _profileItem('Dirección', 'Av. Siempre Viva 123'),
            _profileItem('Teléfono', '+52 123 456 7890'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text('Cerrar Sesión'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[200],
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileItem(String title, String content) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 20),
          SizedBox(width: 10),
          Text('$title: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(content)),
        ],
      ),
    );
  }
}
