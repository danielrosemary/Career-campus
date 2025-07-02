// test/firebase_mock.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';

class FakeFirebasePlatform extends FirebasePlatform {
  FakeFirebasePlatform() : super();

  @override
  FirebaseAppPlatform delegateFor({required FirebaseApp app}) {
    return FakeFirebaseApp(app.name, app.options);
  }

  @override
  FirebaseAppPlatform optionsFromPlatform(String appName) {
    return FakeFirebaseApp(
        appName,
        const FirebaseOptions(
          apiKey: 'fake',
          appId: 'fake',
          messagingSenderId: 'fake',
          projectId: 'fake',
        ));
  }
}

class FakeFirebaseApp extends FirebaseAppPlatform {
  FakeFirebaseApp(super.name, super.options);
}
