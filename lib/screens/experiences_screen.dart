import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class ExperiencesScreen extends StatelessWidget {
  const ExperiencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiencias'),
        actions: const [LanguageSwitch()],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildExperienceCategory('Científicas', Icons.science),
          _buildExperienceList('Científicas', [
            _buildExperienceItem(
              'Tour del Canal: La Ingeniería Detrás de la Maravilla',
              'Descubre los secretos de ingeniería del Canal de Panamá',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Tour+Científico',
              '\$85',
            ),
            _buildExperienceItem(
              'Biomuseo: Biodiversidad y Evolución',
              'Explora la increíble biodiversidad de Panamá',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Biomuseo',
              '\$18',
            ),
          ]),
          _buildExperienceCategory('Culturales', Icons.architecture),
          _buildExperienceList('Culturales', [
            _buildExperienceItem(
              'Casco Antiguo: Historia Viva',
              'Recorrido por el centro histórico de Panamá',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Casco+Antiguo',
              '\$65',
            ),
            _buildExperienceItem(
              'Comunidades Indígenas: Tradición Viva',
              'Experiencia auténtica con comunidades locales',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Comunidades+Indígenas',
              '\$120',
            ),
          ]),
          _buildExperienceCategory('Gastronómicas', Icons.restaurant),
          _buildExperienceList('Gastronómicas', [
            _buildExperienceItem(
              'Ruta de Sabores Panameños',
              'Tour gastronómico por los sabores tradicionales',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Gastronomía',
              '\$95',
            ),
            _buildExperienceItem(
              'Clase de Cocina Tradicional',
              'Aprende a preparar platos típicos panameños',
              'https://via.placeholder.com/600x400/0077B6/FFFFFF?text=Cocina+Tradicional',
              '\$75',
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildExperienceCategory(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Icon(icon, size: 28, color: Colors.blue),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceList(String category, List<Widget> items) {
    return Column(children: items);
  }

  Widget _buildExperienceItem(
    String title,
    String description,
    String imageUrl,
    String price,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageUrl, height: 200, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description, style: TextStyle(color: Colors.grey[600])),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Para futuras expansiones: agregar al carrito
                      },
                      child: const Text('Reservar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
