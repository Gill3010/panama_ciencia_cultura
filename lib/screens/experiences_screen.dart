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
              'https://media.istockphoto.com/id/1293532847/photo/close-up-of-trusses-and-suspension-bridge-rigging-along-the-waterways-of-the-locks-of-the.jpg?s=2048x2048&w=is&k=20&c=Htnn1JCoP9IT3DaHVRGXl-_CXHGT6qtvfCGDtezWztM=',
              '\$85',
            ),
            _buildExperienceItem(
              'Biomuseo: Biodiversidad y Evolución',
              'Explora la increíble biodiversidad de Panamá',
              'https://images.unsplash.com/photo-1674074070126-42f0a5def8f9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QmlvbXVzZW8lM0ElMjBCaW9kaXZlcnNpZGFkJTIweSUyMEV2b2x1Y2klQzMlQjNufGVufDB8fDB8fHww',
              '\$18',
            ),
          ]),
          _buildExperienceCategory('Culturales', Icons.architecture),
          _buildExperienceList('Culturales', [
            _buildExperienceItem(
              'Casco Antiguo: Historia Viva',
              'Recorrido por el centro histórico de Panamá',
              'https://media.istockphoto.com/id/882535108/es/foto/calle-del-casco-viejo-en-una-vieja-parte-de-ciudad-de-panam%C3%A1.webp?a=1&b=1&s=612x612&w=0&k=20&c=4VFOnd8M-qUx2AcI6c2KLthkr9iT-jKyft8O030XEAE=',
              '\$65',
            ),
            _buildExperienceItem(
              'Comunidades Indígenas: Tradición Viva',
              'Experiencia auténtica con comunidades locales',
              'https://media.istockphoto.com/id/1253961173/photo/indigenous-woman-beading-flower-coaster-at-market-stall-for-tourists.jpg?s=2048x2048&w=is&k=20&c=gWGTOQqlyp154NGcy4kOumnq-Rbd6IR8xCX1qjUMQQ8=',
              '\$120',
            ),
          ]),
          _buildExperienceCategory('Gastronómicas', Icons.restaurant),
          _buildExperienceList('Gastronómicas', [
            _buildExperienceItem(
              'Ruta de Sabores Panameños',
              'Tour gastronómico por los sabores tradicionales',
              'https://media.istockphoto.com/id/2211076651/photo/traditional-panamanian-cuisine-including-arroz-con-pollo-carima%C3%B1ola-chicharr%C3%B3n-guisado-de.jpg?s=2048x2048&w=is&k=20&c=llAFHCfKZJPLWu2EUaMhukE_pp-6uPKNSiQB4jVoB0o=',
              '\$95',
            ),
            _buildExperienceItem(
              'Clase de Cocina Tradicional',
              'Aprende a preparar platos típicos panameños',
              'https://media.istockphoto.com/id/1362584060/photo/hallaca-on-the-table-the-traditional-dish-of-venezuelan-christmas.jpg?s=2048x2048&w=is&k=20&c=6eJ1C_QsGh42QY66CartxcIheE0NDhpu64yaP1eSR24=',
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
