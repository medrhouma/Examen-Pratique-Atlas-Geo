import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryDetailPage extends StatelessWidget {
  final Country country;

  const CountryDetailPage({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.nom),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drapeau en grand format
            Container(
              height: 200,
              color: Colors.grey.shade200,
              child: Image.asset(
                country.imageDetail ?? country.drapeau,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.flag, size: 100);
                },
              ),
            ),
            
            // Informations
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildInfoCard(
                    icon: Icons.location_city,
                    title: 'Capitale',
                    value: country.capitale,
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    icon: Icons.people,
                    title: 'Population',
                    value: country.populationFormat,
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    icon: Icons.map,
                    title: 'Superficie',
                    value: country.superficieFormat,
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    icon: Icons.language,
                    title: 'Langue officielle',
                    value: country.langue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.blue),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}