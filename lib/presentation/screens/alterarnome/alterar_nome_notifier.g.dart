// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_nome_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarNomeNotifier)
final alterarNomeProvider = AlterarNomeNotifierProvider._();

final class AlterarNomeNotifierProvider
    extends $NotifierProvider<AlterarNomeNotifier, AlterarNomeState> {
  AlterarNomeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarNomeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarNomeNotifierHash();

  @$internal
  @override
  AlterarNomeNotifier create() => AlterarNomeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlterarNomeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlterarNomeState>(value),
    );
  }
}

String _$alterarNomeNotifierHash() =>
    r'd9bef1d9df23f7e38506eb27cbf1aae8679a247b';

abstract class _$AlterarNomeNotifier extends $Notifier<AlterarNomeState> {
  AlterarNomeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlterarNomeState, AlterarNomeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlterarNomeState, AlterarNomeState>,
              AlterarNomeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
