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
class DefFire {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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



  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDy5Dr2sNcxVueUPHluS5V13tiNTFvXfxQ',
    appId: '1:744372494908:ios:85217d1793ba13e55a5939',
    messagingSenderId: '744372494908',
    projectId: 'mostevents-ad37c',
    storageBucket: 'mostevents-ad37c.appspot.com',
    iosBundleId: 'com.moste.vents.foot',
  );
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDy5Dr2sNcxVueUPHluS5V13tiNTFvXfxQ',
    appId: '1:744372494908:ios:85217d1793ba13e55a5939',
    messagingSenderId: '744372494908',
    projectId: 'mostevents-ad37c',
    storageBucket: 'mostevents-ad37c.appspot.com',
    iosBundleId: 'com.moste.vents.foot',
  );
}

