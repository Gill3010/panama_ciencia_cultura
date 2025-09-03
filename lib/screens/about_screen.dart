import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Nosotros'),
        actions: const [LanguageSwitch()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Placeholder para imagen/logo
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(75),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://via.placeholder.com/150x150/0077B6/FFFFFF?text=Logo'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Panamá Ciencia y Cultura',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Somos una plataforma dedicada a promover el turismo cultural, científico y gastronómico en Panamá. Nuestra misión es conectar a los visitantes con experiencias auténticas que muestren la riqueza de nuestro país.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Nuestros Valores',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildValueItem('Autenticidad', Icons.verified),
            _buildValueItem('Sostenibilidad', Icons.eco),
            _buildValueItem('Innovación', Icons.lightbulb),
            _buildValueItem('Conexión Cultural', Icons.people),
            // NOTA PARA FUTURAS EXPANSIONES:
            // Aquí se puede agregar información del equipo, historias, etc.
          ],
        ),
      ),
    );
  }

  Widget _buildValueItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
    );
  }
}
