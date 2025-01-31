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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCOLHLM6mogElyMGYSQeNY2eWXtVBTAzY8',
    appId: '1:362535649804:web:68c74a2cef2895a09e6429',
    messagingSenderId: '362535649804',
    projectId: 'temp-4da78',
    authDomain: 'temp-4da78.firebaseapp.com',
    storageBucket: 'temp-4da78.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTNIG59qGHJ5oUX1qZPRaRzUFlhPzttPE',
    appId: '1:362535649804:android:8f236a575f520b0e9e6429',
    messagingSenderId: '362535649804',
    projectId: 'temp-4da78',
    storageBucket: 'temp-4da78.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6OWVAVWaBKUlwt5ODgHts0tfNLFMx3BE',
    appId: '1:362535649804:ios:27ef5f9cc62898f39e6429',
    messagingSenderId: '362535649804',
    projectId: 'temp-4da78',
    storageBucket: 'temp-4da78.appspot.com',
    iosBundleId: 'com.example.competition',
  );
}
