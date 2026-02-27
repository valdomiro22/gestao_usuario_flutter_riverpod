import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deslogar_notifier.g.dart';

@riverpod
class DeslogarNotifier extends _$DeslogarNotifier {
  @override
  AsyncValue build() => const AsyncValue.data(null);

  Future<void> deslogar() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deslogarUseCaseProvider);
      final result = await useCase();

      return result.fold(
        (failure) => throw failure,
        (_) => null,
      );
    });
  }
}