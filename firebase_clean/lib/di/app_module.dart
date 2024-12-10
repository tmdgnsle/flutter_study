import 'package:firebase_clean/di/firebase_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get firebaseService => FirebaseService.init();
}