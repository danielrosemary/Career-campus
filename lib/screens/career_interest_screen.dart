import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/career_state.dart';
import 'career_listing_screen.dart';
import 'main_screen.dart'; // Points to MainScreen

class CareerInterestScreen extends StatefulWidget {
  const CareerInterestScreen({super.key});

  @override
  State<CareerInterestScreen> createState() => _CareerInterestScreenState();
}

class _CareerInterestScreenState extends State<CareerInterestScreen> {
  final List<String> _careerInterests = [
    'Engineering & Technology',
    'Business & Finance',
    'Healthcare & Medicine',
    'Arts & Humanities',
    'Sciences',
    'Education',
    'Law & Public Service',
    'Agriculture',
  ];

  final List<String> _academicSubjects = [
    'Mathematics',
    'Physics',
    'Chemistry',
    'Biology',
    'Economics',
    'History',
    'Literature',
    'Entrepreneur',
    'Art',
    'Divinity',
    'IRE',
    'Agriculture',
    'ICT',
  ];

  final List<String> _selectedInterests = [];
  final List<String> _selectedSubjects = [];

  @override
  Widget build(BuildContext context) {
    final careerState = Provider.of<CareerState>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Interests'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
              (route) => false,
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade50, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What are your areas of interest?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _careerInterests.map((interest) {
                final isSelected = _selectedInterests.contains(interest);
                return ChoiceChip(
                  label: Text(
                    interest,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.indigo[800],
                    ),
                  ),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      selected
                          ? _selectedInterests.add(interest)
                          : _selectedInterests.remove(interest);
                    });
                  },
                  backgroundColor: Colors.indigo[50],
                  selectedColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            const Text(
              'Select at least two favorite academic subjects:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _academicSubjects.map((subject) {
                if (subject == 'Geography') {
                  return const SizedBox.shrink();
                }
                final isSelected = _selectedSubjects.contains(subject);
                return ChoiceChip(
                  label: Text(
                    subject,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.green[800]),
                  ),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      selected
                          ? _selectedSubjects.add(subject)
                          : _selectedSubjects.remove(subject);
                    });
                  },
                  backgroundColor: Colors.green[50],
                  selectedColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }).toList(),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_selectedInterests.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select at least one interest.'),
                      ),
                    );
                  } else if (_selectedInterests
                          .contains('Engineering & Technology') &&
                      _selectedSubjects.length < 2) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'For Engineering courses, please select at least two academic subjects.'),
                      ),
                    );
                  } else {
                    careerState.updateSelectedInterests(_selectedInterests);
                    careerState.updateSelectedSubjects(_selectedSubjects);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CareerListingScreen()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 143, 156, 224),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Show Me Careers'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
