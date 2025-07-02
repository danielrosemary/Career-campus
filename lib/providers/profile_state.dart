import 'package:flutter/material.dart';

class ProfileState with ChangeNotifier {
  String userName = 'NSUBUGA DANIEL';
  String userEmail = 'danilnsubuga30@gmail.com';
  String userImage = 'assets/images/profile.png';

  void updateProfile({
    required String name,
    required String email,
    required String imageUrl,
  }) {
    userName = name;
    userEmail = email;
    userImage = imageUrl; // ✅ Corrected from `profileImage` to `userImage`
    notifyListeners();
  }
}
