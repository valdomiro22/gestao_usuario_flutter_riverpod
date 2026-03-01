// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_email_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarEmailNotifier)
final alterarEmailProvider = AlterarEmailNotifierProvider._();

final class AlterarEmailNotifierProvider
    extends $NotifierProvider<AlterarEmailNotifier, AlterarEmailState> {
  AlterarEmailNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarEmailNotifierHash();

  @$internal
  @override
  AlterarEmailNotifier create() => AlterarEmailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlterarEmailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlterarEmailState>(value),
    );
  }
}

String _$alterarEmailNotifierHash() =>
    r'67a538dc8027fee14c5f2b660fe83e175c57b931';

abstract class _$AlterarEmailNotifier extends $Notifier<AlterarEmailState> {
  AlterarEmailState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlterarEmailState, AlterarEmailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlterarEmailState, AlterarEmailState>,
              AlterarEmailState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
