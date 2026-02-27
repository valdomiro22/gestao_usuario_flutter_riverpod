// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deslogar_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeslogarNotifier)
final deslogarProvider = DeslogarNotifierProvider._();

final class DeslogarNotifierProvider
    extends $NotifierProvider<DeslogarNotifier, AsyncValue<dynamic>> {
  DeslogarNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deslogarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deslogarNotifierHash();

  @$internal
  @override
  DeslogarNotifier create() => DeslogarNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<dynamic>>(value),
    );
  }
}

String _$deslogarNotifierHash() => r'70560f60b2e6c00a935c38015f5550a6c6774259';

abstract class _$DeslogarNotifier extends $Notifier<AsyncValue<dynamic>> {
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
