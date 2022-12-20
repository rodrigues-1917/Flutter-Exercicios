// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAxctubnmb3qZEpsP-7QPhiUdFG_oUKEoI',
    appId: '1:567472457041:web:a6ca40039cc363ff0f3f70',
    messagingSenderId: '567472457041',
    projectId: 'banco-f4f66',
    authDomain: 'banco-f4f66.firebaseapp.com',
    databaseURL: 'https://banco-f4f66-default-rtdb.firebaseio.com',
    storageBucket: 'banco-f4f66.appspot.com',
    measurementId: 'G-9G4BZZ9PBV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIV_hVTwNYAUX0SQdCtv8RxnRDrorJsg8',
    appId: '1:567472457041:android:67eab4f2902efb980f3f70',
    messagingSenderId: '567472457041',
    projectId: 'banco-f4f66',
    databaseURL: 'https://banco-f4f66-default-rtdb.firebaseio.com',
    storageBucket: 'banco-f4f66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDogywjnlJ7dCVsbgUqWxW-0Q_QwoKG0Tk',
    appId: '1:567472457041:ios:7bae155828f00a390f3f70',
    messagingSenderId: '567472457041',
    projectId: 'banco-f4f66',
    databaseURL: 'https://banco-f4f66-default-rtdb.firebaseio.com',
    storageBucket: 'banco-f4f66.appspot.com',
    iosClientId: '567472457041-v8mv9101macc3p0pl35cc7b78eap6nf2.apps.googleusercontent.com',
    iosBundleId: 'com.example.banco2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDogywjnlJ7dCVsbgUqWxW-0Q_QwoKG0Tk',
    appId: '1:567472457041:ios:7bae155828f00a390f3f70',
    messagingSenderId: '567472457041',
    projectId: 'banco-f4f66',
    databaseURL: 'https://banco-f4f66-default-rtdb.firebaseio.com',
    storageBucket: 'banco-f4f66.appspot.com',
    iosClientId: '567472457041-v8mv9101macc3p0pl35cc7b78eap6nf2.apps.googleusercontent.com',
    iosBundleId: 'com.example.banco2',
  );
}