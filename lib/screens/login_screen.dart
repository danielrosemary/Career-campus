import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:career_campus/screens/admin_dashboard_screen.dart';
import 'package:career_campus/screens/main_screen.dart';
import 'package:career_campus/screens/register_screen.dart';
import '../constants/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _hidePassword = true;
  bool _isLoading = false;

  // Simulated user database
  final List<Map<String, String>> mockUsers = [
    {
      "email": "admin@careercampus.com",
      "password": "adminpass123",
      "userType": "Admin",
    },
    {
      "email": "student@careercampus.com",
      "password": "studentpass123",
      "userType": "User",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(color: Colors.indigo))
            : Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    const SizedBox(height: 32),

                    // Email
                    TextFormField(
                      controller: _emailController,
                      decoration: _inputDecoration('Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your email';
                        }
                        if (!value.contains('@')) return 'Enter a valid email';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    // Password
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _hidePassword,
                      decoration: _inputDecoration('Password').copyWith(
                        suffixIcon: IconButton(
                          icon: Icon(_hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _hidePassword = !_hidePassword;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your password';
                        }
                        if (value.length < 7) {
                          return 'Password must be at least 7 characters';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 32),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: _buttonStyle(),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() => _isLoading = true);

                            await Future.delayed(const Duration(seconds: 2));
                            final email = _emailController.text.trim();
                            final password = _passwordController.text.trim();

                            final user = mockUsers.firstWhere(
                              (u) =>
                                  u['email'] == email &&
                                  u['password'] == password,
                              orElse: () => {},
                            );

                            if (user.isEmpty) {
                              Fluttertoast.showToast(
                                msg: "Unknown user or incorrect credentials.",
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                              );
                              setState(() => _isLoading = false);
                              return;
                            }

                            // Success
                            Fluttertoast.showToast(
                              msg: "Login Successful as ${user['userType']}!",
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                            );

                            setState(() => _isLoading = false);

                            if (user['userType'] == 'Admin') {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const AdminDashboardScreen()),
                              );
                            } else {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MainScreen()),
                              );
                            }
                          }
                        },
                        child: const Text('Login',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 83, 197, 38))),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Register redirect
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterScreen()),
                            );
                          },
                          child: const Text('Register',
                              style: TextStyle(color: Colors.indigo)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.indigo, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      filled: true,
      fillColor: Colors.grey[100],
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
