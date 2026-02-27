// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recuperar_senha_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecuperarSenhaNotifier)
final recuperarSenhaProvider = RecuperarSenhaNotifierProvider._();

final class RecuperarSenhaNotifierProvider
    extends $NotifierProvider<RecuperarSenhaNotifier, RecuperarSenhaState> {
  RecuperarSenhaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recuperarSenhaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recuperarSenhaNotifierHash();

  @$internal
  @override
  RecuperarSenhaNotifier create() => RecuperarSenhaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecuperarSenhaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecuperarSenhaState>(value),
    );
  }
}

String _$recuperarSenhaNotifierHash() =>
    r'3c7c1b9ecaa316763844da639ae5b5e51e201aee';

abstract class _$RecuperarSenhaNotifier extends $Notifier<RecuperarSenhaState> {
  RecuperarSenhaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RecuperarSenhaState, RecuperarSenhaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RecuperarSenhaState, RecuperarSenhaState>,
              RecuperarSenhaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
