// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atualizar_foto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AtualizarFotoNotifier)
final atualizarFotoProvider = AtualizarFotoNotifierProvider._();

final class AtualizarFotoNotifierProvider
    extends $NotifierProvider<AtualizarFotoNotifier, AsyncValue<dynamic>> {
  AtualizarFotoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'atualizarFotoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$atualizarFotoNotifierHash();

  @$internal
  @override
  AtualizarFotoNotifier create() => AtualizarFotoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<dynamic>>(value),
    );
  }
}

String _$atualizarFotoNotifierHash() =>
    r'66e51085e3a596133dbca1e195ade6d96577d060';

abstract class _$AtualizarFotoNotifier extends $Notifier<AsyncValue<dynamic>> {
  AsyncValue<dynamic> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<dynamic>, AsyncValue<dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<dynamic>, AsyncValue<dynamic>>,
              AsyncValue<dynamic>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
