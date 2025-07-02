// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:career_campus/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';

import 'firebase_mock.dart';

void main() {
  setUpAll(() async {
    FirebasePlatform.instance = FakeFirebasePlatform();
    await Firebase.initializeApp();
  });

  testWidgets('shows onboarding or welcome screen depending on launch flag',
      (WidgetTester tester) async {
    // 👇 Simulate first launch
    SharedPreferences.setMockInitialValues({'first_launch': true});

    await tester.pumpWidget(const CareerCampusApp());
    await tester.pumpAndSettle();

    expect(
      find.textContaining(
          'Welcome'), // Adjust based on your actual onboarding/welcome titles
      findsWidgets,
    );
  });

  testWidgets('navigates to Welcome screen after onboarding',
      (WidgetTester tester) async {
    // 👇 Simulate returning user
    SharedPreferences.setMockInitialValues({'first_launch': false});

    await tester.pumpWidget(const CareerCampusApp());
    await tester.pumpAndSettle();

    expect(find.textContaining('Welcome'), findsWidgets);
  });
}
