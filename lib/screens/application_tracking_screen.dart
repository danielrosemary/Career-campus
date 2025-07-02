import 'package:flutter/material.dart';

class ApplicationTrackingScreen extends StatelessWidget {
  const ApplicationTrackingScreen({super.key});

  // Simulated application data
  final List<Map<String, String>> _applications = const [
    {
      'title': 'Software Developer',
      'company': 'Tech Solutions Inc.',
      'date': '2024-05-01',
      'status': 'Applied',
    },
    {
      'title': 'Data Analyst',
      'company': 'Data Insights Ltd.',
      'date': '2024-04-27',
      'status': 'Interview Scheduled',
    },
    {
      'title': 'Web Designer',
      'company': 'Web Creators',
      'date': '2024-04-20',
      'status': 'Rejected',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Tracking',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amber[400],
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        color: Colors.amber[50], // Light amber background
        child: _applications.isEmpty
            ? const Center(
                child: Text('You have no job applications yet.',
                    style: TextStyle(fontSize: 16)))
            : ListView.builder(
                itemCount: _applications.length,
                itemBuilder: (context, index) {
                  final application = _applications[index];
                  return Card(
                    margin: const EdgeInsets.all(12),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            application['title']!,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                          const SizedBox(height: 8),
                          Text('Company: ${application['company']}',
                              style: const TextStyle(color: Colors.grey)),
                          Text('Date: ${application['date']}',
                              style: const TextStyle(color: Colors.grey)),
                          Text('Status: ${application['status']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      _getStatusColor(application['status']))),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Color? _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'applied':
        return Colors.blue;
      case 'interview scheduled':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
