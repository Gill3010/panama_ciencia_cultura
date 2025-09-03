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
            'https://media.istockphoto.com/id/115915864/photo/ships-entering-panama-canal-at-gatun-locks.jpg?s=2048x2048&w=is&k=20&c=mDRRotkg06646a2z2AVObKRselVDdwGYGdVnuYCnerQ=',
          ),
          _buildDestinationCard(
            'Casco Antiguo',
            'Historia y cultura en el centro de la ciudad.',
            'https://images.unsplash.com/photo-1705350007200-816e367f96b7?q=80&w=2671&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          _buildDestinationCard(
            'Biomuseo',
            'Diseñado por Frank Gehry, muestra la biodiversidad de Panamá.',
            'https://images.unsplash.com/photo-1717434172884-21ab9ae0e011?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          _buildDestinationCard(
            'San Blas',
            'Playas paradisíacas y cultura Guna Yala.',
            'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=400&h=300&fit=crop',
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
