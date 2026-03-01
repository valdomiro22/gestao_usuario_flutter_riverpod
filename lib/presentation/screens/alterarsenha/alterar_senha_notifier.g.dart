// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_senha_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarSenhaNotifier)
final alterarSenhaProvider = AlterarSenhaNotifierProvider._();

final class AlterarSenhaNotifierProvider
    extends $NotifierProvider<AlterarSenhaNotifier, AlterarSenhaState> {
  AlterarSenhaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarSenhaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarSenhaNotifierHash();

  @$internal
  @override
  AlterarSenhaNotifier create() => AlterarSenhaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlterarSenhaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlterarSenhaState>(value),
    );
  }
}

String _$alterarSenhaNotifierHash() =>
    r'da3ceb49bfb017bdc462a5c6c0f59cd0b12ba1ea';

abstract class _$AlterarSenhaNotifier extends $Notifier<AlterarSenhaState> {
  AlterarSenhaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlterarSenhaState, AlterarSenhaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlterarSenhaState, AlterarSenhaState>,
              AlterarSenhaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
