import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/career_state.dart';
import '../models/career.dart';
import '../screens/career_detail_screen.dart';

class SavedCareersScreen extends StatelessWidget {
  const SavedCareersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final careerState = Provider.of<CareerState>(context);
    final savedCareers = careerState.savedCareers;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Careers',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        color: Colors.teal[50], // Light deep purple background
        child: savedCareers.isEmpty
            ? const Center(
                child: Text('You have not saved any careers yet.',
                    style: TextStyle(fontSize: 16)))
            : ListView.builder(
                itemCount: savedCareers.length,
                itemBuilder: (context, index) {
                  final career = savedCareers[index];
                  return _buildCareerCard(context, career, Colors.deepPurple);
                },
              ),
      ),
    );
  }

  Widget _buildCareerCard(
      BuildContext context, Career career, Color primaryColor) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CareerDetailScreen(career: career)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    career.localImagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.image_not_supported_outlined,
                          size: 40, color: Colors.grey);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      career.title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Field: ${career.category}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
