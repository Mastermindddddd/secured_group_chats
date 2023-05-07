import 'package:firebase_core/firebase_core.dart';

Future<FirebaseOptions> getFirebaseOptions() async {
  final firebaseApp = await Firebase.initializeApp();
  final options = await firebaseApp.options;
  return options;
}
