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
    apiKey: 'AIzaSyANb1R2ce0pbYo4VI0wC5NicIeSq8fFCbY',
    appId: '1:743982894679:web:5fbe7fd0f8069239559d12',
    messagingSenderId: '743982894679',
    projectId: 'chat-app-e8cdc',
    authDomain: 'chat-app-e8cdc.firebaseapp.com',
    storageBucket: 'chat-app-e8cdc.appspot.com',
    measurementId: 'G-CE1M4B2CH9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMgCtW5Eo3Y-6juP91oRJKjI11yUx0Q5Y',
    appId: '1:743982894679:android:222f44b0c30d83bc559d12',
    messagingSenderId: '743982894679',
    projectId: 'chat-app-e8cdc',
    storageBucket: 'chat-app-e8cdc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDW0GuWZcIC5V2scVP_OSC9e_01X5Cb_3g',
    appId: '1:743982894679:ios:502330b12aa2018b559d12',
    messagingSenderId: '743982894679',
    projectId: 'chat-app-e8cdc',
    storageBucket: 'chat-app-e8cdc.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDW0GuWZcIC5V2scVP_OSC9e_01X5Cb_3g',
    appId: '1:743982894679:ios:502330b12aa2018b559d12',
    messagingSenderId: '743982894679',
    projectId: 'chat-app-e8cdc',
    storageBucket: 'chat-app-e8cdc.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyANb1R2ce0pbYo4VI0wC5NicIeSq8fFCbY',
    appId: '1:743982894679:web:81cab98554e8c9fb559d12',
    messagingSenderId: '743982894679',
    projectId: 'chat-app-e8cdc',
    authDomain: 'chat-app-e8cdc.firebaseapp.com',
    storageBucket: 'chat-app-e8cdc.appspot.com',
    measurementId: 'G-NH1B462ZE0',
  );
}