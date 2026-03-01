import 'package:feature_autentication/core/common/screens/splash_screen.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:feature_autentication/home_screen.dart';
import 'package:feature_autentication/navigate/app_routes_names.dart';
import 'package:feature_autentication/presentation/screens/alteraremail/alterar_email_screen.dart';
import 'package:feature_autentication/presentation/screens/alterarnome/alterar_nome_screen.dart';
import 'package:feature_autentication/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:feature_autentication/presentation/screens/configuracoes/configuracoes_screen.dart';
import 'package:feature_autentication/presentation/screens/logar/logar_screen.dart';
import 'package:feature_autentication/presentation/screens/recuperarsenha/recuperar_senha_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final routes = [
    GoRoute(path: AppRoutesNames.cadastro, builder: (context, state) => CadastroScreen()),
    GoRoute(path: AppRoutesNames.login, builder: (context, state) => LogarScreen()),
    GoRoute(path: AppRoutesNames.home, builder: (context, state) => HomeScreen()),
    GoRoute(path: AppRoutesNames.splash, builder: (context, state) => SplashScreen()),
    GoRoute(path: AppRoutesNames.recuperarSenha, builder: (context, state) => RecuperarSenhaScreen()),
    GoRoute(path: AppRoutesNames.configuracoesUsuario, builder: (context, state) => ConfiguracoesUsuarioScreen()),

    GoRoute(path: AppRoutesNames.alterarNome, builder: (context, state) {
      final usuario = state.extra as UsuarioEntity?;
      if (usuario == null) {
        return const Scaffold(body: Center(child: Text('Item não encontrado - Alterar nome de usuário')));
      }
      return AlterarNomeScreen(usuario: usuario);
    }),

    GoRoute(path: AppRoutesNames.alterarEmail, builder: (context, state) {
      final usuario = state.extra as UsuarioEntity?;
      if (usuario == null) {
        return const Scaffold(body: Center(child: Text('Item não encontrado - Alterar email de usuário')));
      }
      return AlterarEmailScreen(usuario: usuario);
    }),
  ];
}
