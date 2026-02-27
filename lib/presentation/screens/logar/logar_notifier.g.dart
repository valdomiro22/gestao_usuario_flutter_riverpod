// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logar_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LogarNotifier)
final logarProvider = LogarNotifierProvider._();

final class LogarNotifierProvider
    extends $NotifierProvider<LogarNotifier, LoginState> {
  LogarNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logarNotifierHash();

  @$internal
  @override
  LogarNotifier create() => LogarNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginState>(value),
    );
  }
}

String _$logarNotifierHash() => r'3a27f10da954f2bdba12e1ae7408778139f11122';

abstract class _$LogarNotifier extends $Notifier<LoginState> {
  LoginState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LoginState, LoginState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginState, LoginState>,
              LoginState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
