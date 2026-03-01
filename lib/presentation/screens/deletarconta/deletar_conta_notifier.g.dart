// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletar_conta_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeletarContaNotifier)
final deletarContaProvider = DeletarContaNotifierProvider._();

final class DeletarContaNotifierProvider
    extends $NotifierProvider<DeletarContaNotifier, DeletarContaState> {
  DeletarContaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deletarContaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deletarContaNotifierHash();

  @$internal
  @override
  DeletarContaNotifier create() => DeletarContaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeletarContaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeletarContaState>(value),
    );
  }
}

String _$deletarContaNotifierHash() =>
    r'7c4df876954ea7270bfc021bc86ba6c28676f410';

abstract class _$DeletarContaNotifier extends $Notifier<DeletarContaState> {
  DeletarContaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DeletarContaState, DeletarContaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DeletarContaState, DeletarContaState>,
              DeletarContaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
