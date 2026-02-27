import 'package:feature_autentication/core/di/firebaseproviders/firebase_providers.dart';
import 'package:feature_autentication/navigate/app_routes.dart';
import 'package:feature_autentication/navigate/app_routes_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appNavigation = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: AppRoutesNames.splash,

    redirect: (context, state) {
      final authState = ref.read(navigateAuthState);
      final delaySplash = ref.read(delaySplashScreen);

      final localAlvo = state.matchedLocation;

      final isGoingToLogin = localAlvo == AppRoutesNames.login;
      final isGoingToCadastro = localAlvo == AppRoutesNames.cadastro;
      final isGoingToSplash = localAlvo == AppRoutesNames.splash;
      final isGoingToRecuperarSenha = localAlvo == AppRoutesNames.recuperarSenha;

      if (authState.isLoading || delaySplash.isLoading) {
        return isGoingToSplash ? null : AppRoutesNames.splash;
      }

      if (authState.hasError) return AppRoutesNames.login;

      final isLogado = authState.value != null;

      if (isGoingToSplash) return isLogado ? AppRoutesNames.home : AppRoutesNames.login;

      if (!isLogado) {
        if (!isGoingToLogin && !isGoingToCadastro && !isGoingToRecuperarSenha) {
          return AppRoutesNames.login;
        }
      } else {
        if (isGoingToLogin || isGoingToCadastro || isGoingToRecuperarSenha) {
          return AppRoutesNames.home;
        }
      }

      return null;

    },

    routes: AppRoutes.routes,
  );

  ref.listen(navigateAuthState, (_, _) => router.refresh());
  ref.listen(delaySplashScreen, (_, _) => router.refresh());

  return router;
});


final navigateAuthState = StreamProvider<User?>((ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return auth.authStateChanges();
});

final delaySplashScreen = FutureProvider.autoDispose<void>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
});