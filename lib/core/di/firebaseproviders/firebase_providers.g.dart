// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseAuth)
final firebaseAuthProvider = FirebaseAuthProvider._();

final class FirebaseAuthProvider
    extends $FunctionalProvider<FirebaseAuth, FirebaseAuth, FirebaseAuth>
    with $Provider<FirebaseAuth> {
  FirebaseAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseAuthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseAuthHash();

  @$internal
  @override
  $ProviderElement<FirebaseAuth> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseAuth create(Ref ref) {
    return firebaseAuth(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseAuth value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseAuth>(value),
    );
  }
}

String _$firebaseAuthHash() => r'912368c3df3f72e4295bf7a8cda93b9c5749d923';

@ProviderFor(firebaseFirestore)
final firebaseFirestoreProvider = FirebaseFirestoreProvider._();

final class FirebaseFirestoreProvider
    extends
        $FunctionalProvider<
          FirebaseFirestore,
          FirebaseFirestore,
          FirebaseFirestore
        >
    with $Provider<FirebaseFirestore> {
  FirebaseFirestoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseFirestoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseFirestoreHash();

  @$internal
  @override
  $ProviderElement<FirebaseFirestore> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FirebaseFirestore create(Ref ref) {
    return firebaseFirestore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseFirestore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseFirestore>(value),
    );
  }
}

String _$firebaseFirestoreHash() => r'963402713bf9b7cc1fb259d619d9b0184d4dcec1';

@ProviderFor(firebaseStorage)
final firebaseStorageProvider = FirebaseStorageProvider._();

final class FirebaseStorageProvider
    extends
        $FunctionalProvider<FirebaseStorage, FirebaseStorage, FirebaseStorage>
    with $Provider<FirebaseStorage> {
  FirebaseStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseStorageHash();

  @$internal
  @override
  $ProviderElement<FirebaseStorage> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseStorage create(Ref ref) {
    return firebaseStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseStorage>(value),
    );
  }
}

String _$firebaseStorageHash() => r'aa6946fd2a3470c4f3e2e72956076591cc63b435';

@ProviderFor(usuarioDatasource)
final usuarioDatasourceProvider = UsuarioDatasourceProvider._();

final class UsuarioDatasourceProvider
    extends
        $FunctionalProvider<
          UsuarioDatasource,
          UsuarioDatasource,
          UsuarioDatasource
        >
    with $Provider<UsuarioDatasource> {
  UsuarioDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioDatasourceHash();

  @$internal
  @override
  $ProviderElement<UsuarioDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioDatasource create(Ref ref) {
    return usuarioDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioDatasource>(value),
    );
  }
}

String _$usuarioDatasourceHash() => r'0b0e2e685589dbd9281d2e9f31915954892683a7';

@ProviderFor(authRemoteDatasource)
final authRemoteDatasourceProvider = AuthRemoteDatasourceProvider._();

final class AuthRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          AuthRemoteDatasource,
          AuthRemoteDatasource,
          AuthRemoteDatasource
        >
    with $Provider<AuthRemoteDatasource> {
  AuthRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<AuthRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthRemoteDatasource create(Ref ref) {
    return authRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRemoteDatasource>(value),
    );
  }
}

String _$authRemoteDatasourceHash() =>
    r'a0420ebc1d483334bbbed639d652e7aeb971aa1d';

@ProviderFor(usuarioStorageDatasource)
final usuarioStorageDatasourceProvider = UsuarioStorageDatasourceProvider._();

final class UsuarioStorageDatasourceProvider
    extends
        $FunctionalProvider<
          UsuarioStorageDatasource,
          UsuarioStorageDatasource,
          UsuarioStorageDatasource
        >
    with $Provider<UsuarioStorageDatasource> {
  UsuarioStorageDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioStorageDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioStorageDatasourceHash();

  @$internal
  @override
  $ProviderElement<UsuarioStorageDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioStorageDatasource create(Ref ref) {
    return usuarioStorageDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioStorageDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioStorageDatasource>(value),
    );
  }
}

String _$usuarioStorageDatasourceHash() =>
    r'ed7fd67c872aef715d7f69c6240dd53510b2c1da';

@ProviderFor(usuarioRepository)
final usuarioRepositoryProvider = UsuarioRepositoryProvider._();

final class UsuarioRepositoryProvider
    extends
        $FunctionalProvider<
          UsuarioRepository,
          UsuarioRepository,
          UsuarioRepository
        >
    with $Provider<UsuarioRepository> {
  UsuarioRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioRepositoryHash();

  @$internal
  @override
  $ProviderElement<UsuarioRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioRepository create(Ref ref) {
    return usuarioRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioRepository>(value),
    );
  }
}

String _$usuarioRepositoryHash() => r'd99732f2fd9f87be421e5bc1eb9ecdd92d793132';

@ProviderFor(authRepository)
final authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'85782c17a7a45c26ba968dea12877e2577363791';

@ProviderFor(usuarioStorageRepository)
final usuarioStorageRepositoryProvider = UsuarioStorageRepositoryProvider._();

final class UsuarioStorageRepositoryProvider
    extends
        $FunctionalProvider<
          UsuarioStorageRepository,
          UsuarioStorageRepository,
          UsuarioStorageRepository
        >
    with $Provider<UsuarioStorageRepository> {
  UsuarioStorageRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioStorageRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioStorageRepositoryHash();

  @$internal
  @override
  $ProviderElement<UsuarioStorageRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioStorageRepository create(Ref ref) {
    return usuarioStorageRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioStorageRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioStorageRepository>(value),
    );
  }
}

String _$usuarioStorageRepositoryHash() =>
    r'c76b10e7823653ab121970654c63b49f105223c3';
