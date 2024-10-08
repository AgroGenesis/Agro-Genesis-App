// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCveJqjd4R13DmjkOSZQsPcRkPbAQnAWLk',
    appId: '1:1040767411175:web:3c3cd53ae05a5896c39342',
    messagingSenderId: '1040767411175',
    projectId: 'agro-genesis',
    authDomain: 'agro-genesis.firebaseapp.com',
    storageBucket: 'agro-genesis.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZ8SRnrA7Xxb6tLnHpjeX3vQK9uYisIUw',
    appId: '1:1040767411175:android:8889651e3124aa03c39342',
    messagingSenderId: '1040767411175',
    projectId: 'agro-genesis',
    storageBucket: 'agro-genesis.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxQQxeW3KsXzuSJnx433yHfxG7978YnWI',
    appId: '1:1040767411175:ios:88487f9859917c14c39342',
    messagingSenderId: '1040767411175',
    projectId: 'agro-genesis',
    storageBucket: 'agro-genesis.appspot.com',
    iosBundleId: 'com.example.agrogenesis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxQQxeW3KsXzuSJnx433yHfxG7978YnWI',
    appId: '1:1040767411175:ios:88487f9859917c14c39342',
    messagingSenderId: '1040767411175',
    projectId: 'agro-genesis',
    storageBucket: 'agro-genesis.appspot.com',
    iosBundleId: 'com.example.agrogenesis',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCveJqjd4R13DmjkOSZQsPcRkPbAQnAWLk',
    appId: '1:1040767411175:web:59df28b154fab0a9c39342',
    messagingSenderId: '1040767411175',
    projectId: 'agro-genesis',
    authDomain: 'agro-genesis.firebaseapp.com',
    storageBucket: 'agro-genesis.appspot.com',
  );
}
