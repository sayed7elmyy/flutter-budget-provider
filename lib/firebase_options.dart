
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCu7mSmYVFxvi9uCakzPeR6QrKnd-7UOEM',
    appId: '1:236294665823:web:6fefd97cae5070f601cdea',
    messagingSenderId: '236294665823',
    projectId: 'budget-planner-63ef4',
    authDomain: 'budget-planner-63ef4.firebaseapp.com',
    databaseURL: 'https://budget-planner-63ef4-default-rtdb.firebaseio.com',
    storageBucket: 'budget-planner-63ef4.firebasestorage.app',
    measurementId: 'G-CSB64DVGYE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAOew4fQzWvoMOQUC0Hr4d8NfSdRz0j4U',
    appId: '1:236294665823:android:ea1691936619749f01cdea',
    messagingSenderId: '236294665823',
    projectId: 'budget-planner-63ef4',
    databaseURL: 'https://budget-planner-63ef4-default-rtdb.firebaseio.com',
    storageBucket: 'budget-planner-63ef4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ-5bHzRDhRht7hTup8GYeJEbJwxEWVJ4',
    appId: '1:236294665823:ios:5c0ca2fa3cdb5f6601cdea',
    messagingSenderId: '236294665823',
    projectId: 'budget-planner-63ef4',
    databaseURL: 'https://budget-planner-63ef4-default-rtdb.firebaseio.com',
    storageBucket: 'budget-planner-63ef4.firebasestorage.app',
    iosBundleId: 'com.example.flutter1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ-5bHzRDhRht7hTup8GYeJEbJwxEWVJ4',
    appId: '1:236294665823:ios:5c0ca2fa3cdb5f6601cdea',
    messagingSenderId: '236294665823',
    projectId: 'budget-planner-63ef4',
    databaseURL: 'https://budget-planner-63ef4-default-rtdb.firebaseio.com',
    storageBucket: 'budget-planner-63ef4.firebasestorage.app',
    iosBundleId: 'com.example.flutter1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCu7mSmYVFxvi9uCakzPeR6QrKnd-7UOEM',
    appId: '1:236294665823:web:5bc4ea359d3f0b1c01cdea',
    messagingSenderId: '236294665823',
    projectId: 'budget-planner-63ef4',
    authDomain: 'budget-planner-63ef4.firebaseapp.com',
    databaseURL: 'https://budget-planner-63ef4-default-rtdb.firebaseio.com',
    storageBucket: 'budget-planner-63ef4.firebasestorage.app',
    measurementId: 'G-V256W3C753',
  );
}
