import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Welcome Admin!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            // Total Users (Simulated)
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.people, color: Colors.indigo),
                title: const Text('Total Users'),
                trailing: const Text('56'), // Simulated number
              ),
            ),

            // Manage Careers
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.work, color: Colors.green),
                title: const Text('Manage Careers'),
                onTap: () {
                  // Navigate to manage careers screen (create later)
                },
              ),
            ),

            // View Saved Careers
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.bookmark, color: Colors.orange),
                title: const Text('View Saved Careers'),
                onTap: () {
                  // Navigate to saved careers list
                },
              ),
            ),

            // Optional: View Users
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.account_circle, color: Colors.blue),
                title: const Text('View All Users'),
                onTap: () {
                  // Navigate to user list
                },
              ),
            ),

            const SizedBox(height: 40),

            // Logout Button
            ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pop(context); // Or reset to LoginScreen
              },
            ),
          ],
        ),
      ),
    );
  }
}
