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
    apiKey: 'AIzaSyDic2sjo6EKBETKSBXmbkvp1mBrCZPVPGA',
    appId: '1:12609096642:web:eabe636a47fa7d352aa45b',
    messagingSenderId: '12609096642',
    projectId: 'near-camp',
    authDomain: 'near-camp.firebaseapp.com',
    storageBucket: 'near-camp.appspot.com',
    measurementId: 'G-PKEC9W4MZM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDH4OuzHAG-2ZCT6fBbRybBa-QPCJrKtAQ',
    appId: '1:12609096642:android:b85f9da49bb681af2aa45b',
    messagingSenderId: '12609096642',
    projectId: 'near-camp',
    storageBucket: 'near-camp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqjACXa8clm60mj127u-L8L3waN99vu4g',
    appId: '1:12609096642:ios:e441f753183724cc2aa45b',
    messagingSenderId: '12609096642',
    projectId: 'near-camp',
    storageBucket: 'near-camp.appspot.com',
    iosClientId: '12609096642-4pibf3nhgd40eg93074ruumns2epgfq6.apps.googleusercontent.com',
    iosBundleId: 'com.silvershort.nearCamp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqjACXa8clm60mj127u-L8L3waN99vu4g',
    appId: '1:12609096642:ios:e441f753183724cc2aa45b',
    messagingSenderId: '12609096642',
    projectId: 'near-camp',
    storageBucket: 'near-camp.appspot.com',
    iosClientId: '12609096642-4pibf3nhgd40eg93074ruumns2epgfq6.apps.googleusercontent.com',
    iosBundleId: 'com.silvershort.nearCamp',
  );
}
