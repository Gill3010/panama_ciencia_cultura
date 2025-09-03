import 'package:flutter/material.dart';
import 'package:panama_ciencia_cultura/widgets/language_switch.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de Compras'),
        actions: const [LanguageSwitch()],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                // NOTA PARA FUTURAS EXPANSIONES:
                // Estos items vendrán de un Provider/State Management
                _buildCartItem(
                  'Tour del Canal de Panamá',
                  '85.00',
                  'https://via.placeholder.com/100x100/0077B6/FFFFFF?text=Tour+Canal',
                ),
                _buildCartItem(
                  'Experiencia Gastronómica Casco Antiguo',
                  '120.00',
                  'https://via.placeholder.com/100x100/0077B6/FFFFFF?text=Gastronomía',
                ),
                _buildCartItem(
                  'Entrada Biomuseo',
                  '18.00',
                  'https://via.placeholder.com/100x100/0077B6/FFFFFF?text=Biomuseo',
                ),
              ],
            ),
          ),
          _buildTotalSection(),
        ],
      ),
    );
  }

  Widget _buildCartItem(String title, String price, String imageUrl) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('\$$price'),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.remove_circle, color: Colors.red),
              onPressed: () {
                // Para futuras expansiones: eliminar item del carrito
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Subtotal'),
              Text('\$223.00', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Impuestos'),
              Text('\$26.76', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('\$249.76',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Para futuras expansiones: proceso de checkout
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Proceder al Pago'),
            ),
          ),
        ],
      ),
    );
  }
}
