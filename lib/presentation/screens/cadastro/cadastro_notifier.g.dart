// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CadastroNotifier)
final cadastroProvider = CadastroNotifierProvider._();

final class CadastroNotifierProvider
    extends $NotifierProvider<CadastroNotifier, CadastroState> {
  CadastroNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cadastroProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cadastroNotifierHash();

  @$internal
  @override
  CadastroNotifier create() => CadastroNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CadastroState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CadastroState>(value),
    );
  }
}

String _$cadastroNotifierHash() => r'abeeb163428c5af4583c070b54f987a6c896ec04';

abstract class _$CadastroNotifier extends $Notifier<CadastroState> {
  CadastroState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CadastroState, CadastroState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CadastroState, CadastroState>,
              CadastroState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
