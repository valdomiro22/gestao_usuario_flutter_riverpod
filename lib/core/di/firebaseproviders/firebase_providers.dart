import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feature_autentication/data/datasource/usuario_storage_datasource.dart';
import 'package:feature_autentication/data/datasource/usuario_storage_datasource_impl.dart';
import 'package:feature_autentication/data/repository/usuario_storage_repository_impl.dart';
import 'package:feature_autentication/domain/repositories/usuario_storage_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/datasource/auth_remote_datasource.dart';
import '../../../data/datasource/auth_remote_datasource_impl.dart';
import '../../../data/datasource/usuario_datasource.dart';
import '../../../data/datasource/usuario_datasource_impl.dart';
import '../../../data/repository/auth_repository_impl.dart';
import '../../../data/repository/usuario_repository_impl.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/usuario_repository.dart';

part 'firebase_providers.g.dart';

// Firegase -------------------------------------------------------------------
@riverpod
FirebaseAuth firebaseAuth(Ref ref) {
  return FirebaseAuth.instance;
}

@riverpod
FirebaseFirestore firebaseFirestore(Ref ref) {
  return FirebaseFirestore.instance;
}

@riverpod
FirebaseStorage firebaseStorage(Ref ref) {
  return FirebaseStorage.instance;
}

// datasource ------------------------------------------------------------------
@riverpod
UsuarioDatasource usuarioDatasource(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return UsuarioDatasourceImpl(firestore);
}

@riverpod
AuthRemoteDatasource authRemoteDatasource(Ref ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return AuthRemoteDatasourceImpl(auth);
}

@riverpod
UsuarioStorageDatasource usuarioStorageDatasource(Ref ref) {
  final storage = ref.watch(firebaseStorageProvider);
  return UsuarioStorageDatasourceImpl(storage);
}

// repository ------------------------------------------------------------------
@riverpod
UsuarioRepository usuarioRepository(Ref ref) {
  final dataSouce = ref.watch(usuarioDatasourceProvider);
  return UsuarioRepositoryImpl(dataSouce);
}

@riverpod
AuthRepository authRepository(Ref ref) {
  final dataSource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(dataSource);
}

@riverpod
UsuarioStorageRepository usuarioStorageRepository(Ref ref) {
  final datasource = ref.watch(usuarioStorageDatasourceProvider);
  return UsuarioStorageRepositoryImpl(datasource);
}
