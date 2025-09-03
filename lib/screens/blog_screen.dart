import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        actions: const [LanguageSwitch()],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildBlogPost(
            'La Biodiversidad de Panamá',
            'Descubre la increíble diversidad de especies que habitan en nuestro país...',
            'https://via.placeholder.com/600x300/0077B6/FFFFFF?text=Biodiversidad',
            '15 Nov 2024',
          ),
          _buildBlogPost(
            'Gastronomía Panameña: Un Viaje de Sabores',
            'Exploramos los platillos tradicionales que debes probar...',
            'https://via.placeholder.com/600x300/0077B6/FFFFFF?text=Gastronomía',
            '10 Nov 2024',
          ),
          _buildBlogPost(
            'El Legado Cultural del Canal de Panamá',
            'Cómo el Canal transformó la cultura y sociedad panameña...',
            'https://via.placeholder.com/600x300/0077B6/FFFFFF?text=Canal+Cultural',
            '5 Nov 2024',
          ),
          _buildBlogPost(
            'Arqueología en Panamá: Descubriendo el Pasado',
            'Los sitios arqueológicos más importantes del país...',
            'https://via.placeholder.com/600x300/0077B6/FFFFFF?text=Arqueología',
            '1 Nov 2024',
          ),
          // NOTA PARA FUTURAS EXPANSIONES:
          // Los posts del blog vendrán de una API o CMS
        ],
      ),
    );
  }

  Widget _buildBlogPost(
      String title, String excerpt, String imageUrl, String date) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  excerpt,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Para futuras expansiones: navegar a post completo
                      },
                      child: const Text('Leer más →'),
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
