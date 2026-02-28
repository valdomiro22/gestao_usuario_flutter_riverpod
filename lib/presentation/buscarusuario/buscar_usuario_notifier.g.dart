// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_usuario_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarUsuarioNotifier)
final buscarUsuarioProvider = BuscarUsuarioNotifierProvider._();

final class BuscarUsuarioNotifierProvider
    extends $AsyncNotifierProvider<BuscarUsuarioNotifier, UsuarioEntity> {
  BuscarUsuarioNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarUsuarioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarUsuarioNotifierHash();

  @$internal
  @override
  BuscarUsuarioNotifier create() => BuscarUsuarioNotifier();
}

String _$buscarUsuarioNotifierHash() =>
    r'c5b0832ee29f112310b4e573080868ac59331e59';

abstract class _$BuscarUsuarioNotifier extends $AsyncNotifier<UsuarioEntity> {
  FutureOr<UsuarioEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UsuarioEntity>, UsuarioEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UsuarioEntity>, UsuarioEntity>,
              AsyncValue<UsuarioEntity>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
