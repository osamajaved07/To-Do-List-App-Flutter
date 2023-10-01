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
    apiKey: 'AIzaSyC2rwvz2p9r-60M8VrqqIGK9P_LyDaMIUc',
    appId: '1:129081641312:web:f208615a4fea08809e7605',
    messagingSenderId: '129081641312',
    projectId: 'my-to-do-app-6daf0',
    authDomain: 'my-to-do-app-6daf0.firebaseapp.com',
    storageBucket: 'my-to-do-app-6daf0.appspot.com',
    measurementId: 'G-SENMM26P3Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByGlNoE2JQoP5GAecN4VPdIcCG1MHxJik',
    appId: '1:129081641312:android:56dbae6bd9b8da359e7605',
    messagingSenderId: '129081641312',
    projectId: 'my-to-do-app-6daf0',
    storageBucket: 'my-to-do-app-6daf0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwApQhh2QWvMArOvN80d4EuARkN_2Dt8U',
    appId: '1:129081641312:ios:0cd200265c359dfd9e7605',
    messagingSenderId: '129081641312',
    projectId: 'my-to-do-app-6daf0',
    storageBucket: 'my-to-do-app-6daf0.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwApQhh2QWvMArOvN80d4EuARkN_2Dt8U',
    appId: '1:129081641312:ios:624de186d594e8a29e7605',
    messagingSenderId: '129081641312',
    projectId: 'my-to-do-app-6daf0',
    storageBucket: 'my-to-do-app-6daf0.appspot.com',
    iosBundleId: 'com.example.myApp.RunnerTests',
  );
}
