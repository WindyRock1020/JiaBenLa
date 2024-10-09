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
    apiKey: 'AIzaSyBemusf43-cWadSSbS509TW8dlz0MQf8DI',
    appId: '1:676097933490:web:f6b3b9677f9a55bc64c9ab',
    messagingSenderId: '676097933490',
    projectId: 'chaiyifood',
    authDomain: 'chaiyifood.firebaseapp.com',
    storageBucket: 'chaiyifood.appspot.com',
    measurementId: 'G-VGQ9PD17V7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0C5W8bfj6kwyfN_c6rr1ECtMRdZ5eYtU',
    appId: '1:676097933490:android:c597c525b1e458c664c9ab',
    messagingSenderId: '676097933490',
    projectId: 'chaiyifood',
    storageBucket: 'chaiyifood.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPoYbIU9ZtB-NQAS0aCyuyRfAcRJNm1vE',
    appId: '1:676097933490:ios:f2957e8d2bda2b6364c9ab',
    messagingSenderId: '676097933490',
    projectId: 'chaiyifood',
    storageBucket: 'chaiyifood.appspot.com',
    iosBundleId: 'com.example.pipi2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPoYbIU9ZtB-NQAS0aCyuyRfAcRJNm1vE',
    appId: '1:676097933490:ios:f2957e8d2bda2b6364c9ab',
    messagingSenderId: '676097933490',
    projectId: 'chaiyifood',
    storageBucket: 'chaiyifood.appspot.com',
    iosBundleId: 'com.example.pipi2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBemusf43-cWadSSbS509TW8dlz0MQf8DI',
    appId: '1:676097933490:web:6b98400a81e697fa64c9ab',
    messagingSenderId: '676097933490',
    projectId: 'chaiyifood',
    authDomain: 'chaiyifood.firebaseapp.com',
    storageBucket: 'chaiyifood.appspot.com',
    measurementId: 'G-0XKQ3HFK5V',
  );
}