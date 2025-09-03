import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        actions: const [LanguageSwitch()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '¿Necesitas ayuda?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Estamos aquí para responder tus preguntas y ayudarte a planificar tu experiencia en Panamá.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            _buildContactInfo(),
            const SizedBox(height: 24),
            _buildContactForm(),
            const SizedBox(height: 24),
            _buildSocialMedia(),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Información de Contacto',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildInfoItem(Icons.email, 'info@panamacienciaycultura.com'),
        _buildInfoItem(Icons.phone, '+507 123-4567'),
        _buildInfoItem(Icons.location_on, 'Ciudad de Panamá, Panamá'),
        _buildInfoItem(Icons.access_time, 'Lunes a Viernes: 9:00 AM - 6:00 PM'),
      ],
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 20),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildContactForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Envíanos un Mensaje',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Nombre completo',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Correo electrónico',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Asunto',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Mensaje',
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
          ),
          maxLines: 4,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Para futuras expansiones: enviar formulario
            },
            child: const Text('Enviar Mensaje'),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMedia() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Síguenos en Redes Sociales',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildSocialIcon(Icons.facebook, 'Facebook'),
            _buildSocialIcon(Icons.camera_alt, 'Instagram'),
            _buildSocialIcon(Icons.link, 'Website'),
            _buildSocialIcon(Icons.videocam, 'YouTube'),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          child: Icon(icon, size: 30),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}