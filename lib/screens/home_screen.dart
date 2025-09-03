import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panamá Ciencia y Cultura'),
        actions: const [LanguageSwitch()],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildHeroSection(),
                _buildSectionTitle('Destinos Populares'),
                _buildDestinationsPreview(),
                _buildSectionTitle('Experiencias Únicas'),
                _buildExperiencesPreview(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://media.istockphoto.com/id/2193408065/photo/panama-boquete-caldera-river-that-crosses-the-rainforest.jpg?s=2048x2048&w=is&k=20&c=FoXWYrSUzdJRRy2F43YNWx4EKDklzzUdXXUDDVOcA7Y=',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
          ),
        ),
        child: Center(
          child: Text(
            'Descubre Panamá',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildDestinationsPreview() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildPlaceholderCard(
            'Canal de Panamá',
            customImageUrl:
                'https://images.unsplash.com/photo-1650900426337-0f7c0e0f86ea?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          _buildPlaceholderCard(
            'Casco Antiguo',
            customImageUrl:
                'https://media.istockphoto.com/id/2166784461/photo/panama-panama-city-historic-center-casco-viejo-colorful-streets-and-colonial-architecture.jpg?s=2048x2048&w=is&k=20&c=Fai2PI6-nYPD2_pAXU42O3lI8sr_yS7EOk8gGlKXR5I=',
          ),
          _buildPlaceholderCard(
            'Biomuseo',
            customImageUrl:
                'https://images.unsplash.com/photo-1717434172884-21ab9ae0e011?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          _buildPlaceholderCard(
            'San Blas',
            customImageUrl:
                'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=400&h=300&fit=crop',
          ),
        ],
      ),
    );
  }

  Widget _buildExperiencesPreview() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildPlaceholderCard(
            'Tour Científico',
            customImageUrl:
                'https://media.istockphoto.com/id/2187788556/photo/boat-trip-to-the-island.jpg?s=2048x2048&w=is&k=20&c=DDcHjYHFUpFuuZt-tvbFDpF9LNXmGv5turZMoR11Z8Q=',
          ),
          _buildPlaceholderCard(
            'Experiencia Gastronómica',
            customImageUrl:
                'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=400&h=300&fit=crop',
          ),
          _buildPlaceholderCard(
            'Tour Cultural',
            customImageUrl:
                'https://media.istockphoto.com/id/1426692024/photo/local-tour-guide-walking-and-pointing-toward-the-skyline-with-a-group-of-cheerful-fashionable.jpg?s=2048x2048&w=is&k=20&c=rWgWv4l9f7bencCKcV2AivjQxfSeAga_VqhBijKMmsE=',
          ),
          _buildPlaceholderCard(
            'Aventura Natural',
            customImageUrl:
                'https://media.istockphoto.com/id/2169434495/photo/aerial-view-of-the-summit-at-bar%C3%BA-volcano-chriqui-panama-stock-photo.jpg?s=2048x2048&w=is&k=20&c=UWvv-z8QFJtq3CLOx0TuspxxvOzHU060J8irYoKEhaI=',
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholderCard(String title, {String? customImageUrl}) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  customImageUrl ??
                      'https://via.placeholder.com/150x100/0077B6/FFFFFF?text=${Uri.encodeComponent(title)}',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.error_outline, color: Colors.red),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF0077B6), // ← Azul turístico de Panamá
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.7),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Destinos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), label: 'Experiencias'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Carrito'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/destinations');
            break;
          case 2:
            Navigator.pushNamed(context, '/experiences');
            break;
          case 3:
            Navigator.pushNamed(context, '/cart');
            break;
          case 4:
            // Para futuras expansiones: pantalla de perfil/usuario
            break;
        }
      },
    );
  }
}
