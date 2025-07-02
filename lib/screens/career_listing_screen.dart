import 'package:career_campus/models/career.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/career_state.dart';
import '../screens/career_detail_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/career_interest_screen.dart';

class CareerListingScreen extends StatelessWidget {
  const CareerListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final careerState = Provider.of<CareerState>(context);
    final List<String> selectedInterests = careerState.selectedInterests;
    final List<String> selectedSubjects = careerState.selectedSubjects;
    final List<Career> allCareers = careerState.careers;

    final List<Career> filteredCareers = allCareers.where((career) {
      final interestMatch = selectedInterests.isEmpty ||
          selectedInterests.any((interest) =>
              career.category.toLowerCase().contains(interest.toLowerCase()));

      final subjectMatch = selectedSubjects.isEmpty ||
          selectedSubjects.every((subject) => career.subjects.any(
              (careerSubject) =>
                  careerSubject.toLowerCase() == subject.toLowerCase()));

      final isEngineeringRelated =
          career.category.toLowerCase().contains('engineering') ||
              career.category.toLowerCase().contains('technology');
      final hasSufficientEngineeringSubjects = selectedSubjects.length >= 2 &&
          selectedSubjects.every((subject) => career.subjects
              .any((cs) => cs.toLowerCase() == subject.toLowerCase()));

      if (selectedInterests.any(
          (interest) => interest.toLowerCase() == 'engineering & technology')) {
        return interestMatch && hasSufficientEngineeringSubjects;
      } else {
        return interestMatch &&
            (selectedSubjects.isEmpty ||
                selectedSubjects.any((subject) => career.subjects
                    .any((cs) => cs.toLowerCase() == subject.toLowerCase())));
      }
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Listings'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CareerInterestScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          )
        ],
      ),
      backgroundColor: Colors.teal[50],
      body: filteredCareers.isEmpty
          ? const Center(
              child: Text(
                'No careers match your interests and subjects.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: filteredCareers.length,
              itemBuilder: (context, index) {
                final career = filteredCareers[index];
                final isSaved = careerState.isCareerSaved(career);

                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      career.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text('Field: ${career.category}'),
                        const SizedBox(height: 4),
                        Text('Subjects: ${career.subjects.join(', ')}'),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        isSaved
                            ? Icons.bookmark_added
                            : Icons.bookmark_add_outlined,
                        color: isSaved ? Colors.green : null,
                      ),
                      onPressed: () {
                        if (isSaved) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('You already saved this career!')),
                          );
                        } else {
                          careerState.saveCareer(career);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Career saved!')),
                          );
                        }
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CareerDetailScreen(career: career),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
