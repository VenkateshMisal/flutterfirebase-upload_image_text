
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
    
class DefaultFirebaseOptions {
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4pJn4y2AAweIQoIAdvOGXDLzZ_ImE8BM',
    appId: '1:85149721733:android:e33bc89fdeb5e49c5e75ec',
    messagingSenderId: '85149721733',
    projectId: 'dm-shopping-2022',
    storageBucket: 'dm-shopping-2022.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCH9hW_rluhkgdN1LpM8dATNHiIKxluZ7I',
    appId: '1:85149721733:ios:ed7d7646ff9e9f315e75ec',
    messagingSenderId: '85149721733',
    projectId: 'dm-shopping-2022',
    storageBucket: 'dm-shopping-2022.appspot.com',
    androidClientId: '85149721733-f810u9uunc3mgs229p576lulg05tigkj.apps.googleusercontent.com',
    iosClientId: '85149721733-oevehm7jh8q5h09svjn1aifh7gu3i6d8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfiredemo',
  );
}
