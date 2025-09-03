import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class DestinationsScreen extends StatelessWidget {
  const DestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinos'),
        actions: const [LanguageSwitch()],
      ),
      body: ListView(
        children: [
          _buildDestinationCard(
            'Canal de Panamá',
            'Una maravilla de la ingeniería moderna.',
            'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Canal+de+Panamá',
          ),
          _buildDestinationCard(
            'Casco Antiguo',
            'Historia y cultura en el centro de la ciudad.',
            'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Casco+Antiguo',
          ),
          _buildDestinationCard(
            'Biomuseo',
            'Diseñado por Frank Gehry, muestra la biodiversidad de Panamá.',
            'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Biomuseo',
          ),
          _buildDestinationCard(
            'San Blas',
            'Playas paradisíacas y cultura Guna Yala.',
            'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=San+Blas',
          ),
          // NOTA PARA FUTURAS EXPANSIONES:
          // Aquí se conectarán los destinos desde una API o base de datos
        ],
      ),
    );
  }

  Widget _buildDestinationCard(
      String title, String description, String imageUrl) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 16),
                // NOTA PARA FUTURAS EXPANSIONES:
                // Aquí se agregará el botón de reserva y funcionalidad de carrito
                ElevatedButton(
                  onPressed: () {
                    // Lógica temporal - en el futuro navegará a la pantalla de detalles
                  },
                  child: const Text('Ver detalles'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
