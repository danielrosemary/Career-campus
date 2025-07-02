import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/career.dart';
import '../providers/career_state.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CareerDetailScreen extends StatelessWidget {
  final Career career;

  const CareerDetailScreen({super.key, required this.career});

  Widget _buildDetailItem({
    required String label,
    required String value,
    IconData? icon,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(icon, color: Colors.indigo),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                  const SizedBox(height: 4),
                  Text(value, style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstitutionCourseDetails(
      String institution, Map<String, dynamic> data) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              institution,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 8),
            if (data['course'] != null)
              _buildDetailItem(label: 'Course', value: data['course']),
            if (data['admissionRequirements'] != null)
              _buildDetailItem(
                  label: 'Admission Requirements',
                  value: data['admissionRequirements']),
            if (data['tuition'] != null)
              _buildDetailItem(label: 'Tuition', value: data['tuition']),
            if (data['cutOffPoints'] != null &&
                data['cutOffPoints'] is Map<String, dynamic>)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    'Cut-Off Points',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 8),
                  ...((data['cutOffPoints'] as Map<String, dynamic>)
                      .entries
                      .map((entry) {
                    final year = entry.key;
                    final genderMap = Map<String, dynamic>.from(entry.value);
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('$year:',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500)),
                          Text(
                              'M: ${genderMap['Male'] ?? '-'}  |  F: ${genderMap['Female'] ?? '-'}'),
                        ],
                      ),
                    );
                  })),
                ],
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final careerState = Provider.of<CareerState>(context);
    final isSaved = careerState.isCareerSaved(career);

    return Scaffold(
      appBar: AppBar(
        title: Text(career.title),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Career Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                career.localImagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 200,
                    child: Center(
                      child: Icon(Icons.broken_image,
                          size: 60, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Career Title
            Text(
              career.title,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),

            const SizedBox(height: 10),

            // Category/Field
            _buildDetailItem(
              label: 'Field',
              value: career.category,
              icon: Icons.category_outlined,
            ),

            // Description
            const SizedBox(height: 12),
            const Text(
              'Career Description',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 6),
            Text(career.description, style: const TextStyle(fontSize: 16)),

            // Subjects
            if (career.subjects.isNotEmpty) ...[
              const SizedBox(height: 16),
              _buildDetailItem(
                label: 'Relevant Subjects',
                value: career.subjects.join(', '),
                icon: Icons.menu_book_outlined,
              ),
            ],

            // Institutions
            if (career.institutions != null && career.institutions!.isNotEmpty)
              _buildDetailItem(
                label: 'Institutions Offering This Career',
                value: career.institutions!.join(', '),
                icon: Icons.school_outlined,
              ),

            // Study Period
            _buildDetailItem(
              label: 'Study Period',
              value: career.studyPeriod,
              icon: Icons.timer_outlined,
            ),

            // Weight
            _buildDetailItem(
              label: 'Weight',
              value: career.weight,
              icon: Icons.scale_outlined,
            ),

            // Tuition
            _buildDetailItem(
              label: 'Approximate Tuition',
              value: career.approximateTuition ?? '',
              icon: Icons.monetization_on_outlined,
            ),

            // Salary
            _buildDetailItem(
              label: 'Salary Range',
              value: career.salaryRange,
              icon: Icons.attach_money_outlined,
            ),

            const SizedBox(height: 24),

            // Institution & Course Details
            const Text(
              'Institution & Course Details',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 10),

            if (career.coursesByInstitution != null &&
                career.coursesByInstitution!.isNotEmpty)
              ...career.coursesByInstitution!.entries.map(
                (e) => _buildInstitutionCourseDetails(e.key, e.value),
              ),

            const SizedBox(height: 30),

            // Save Button
            if (!isSaved)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    careerState.saveCareer(career);
                    Fluttertoast.showToast(
                      msg: "Career saved successfully!",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                    );
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.bookmark_add),
                  label: const Text('Save Career'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
