import 'package:feature_autentication/core/constants/app_dimens.dart';
import 'package:feature_autentication/presentation/buscarusuario/buscar_usuario_notifier.dart';
import 'package:feature_autentication/presentation/screens/configuracoes/atualizar_foto_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/custom_buttom_widget.dart';
import '../../../core/theme/app_colors.dart';
import '../../../navigate/app_routes_names.dart';
import '../../deslogar/deslogar_notifier.dart';
import '../../widgets/foto_perfil_wieget.dart';

class ConfiguracoesUsuarioScreen extends ConsumerStatefulWidget {
  const ConfiguracoesUsuarioScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends ConsumerState<ConfiguracoesUsuarioScreen> {
  @override
  Widget build(BuildContext context) {
    final fotoPerfilNotifier = ref.watch(atualizarFotoProvider.notifier);
    final usuarioState = ref.watch(buscarUsuarioProvider);
    final deslogarNotifier = ref.watch(deslogarProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Configurações de Usuário'))),
      body: usuarioState.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Erro: $error')),
        data: (usuario) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppDimens.paddingPagina),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Stack(
                      children: <Widget>[
                        FotoPerfilWieget(imageUrl: usuario.urlFotoPerfil ?? ''),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () => fotoPerfilNotifier.atualizar(usuario: usuario),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.secondaryRed,
                              child: Icon(Icons.camera_alt, color: Colors.white, size: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  Center(
                    child: Text(
                      usuario.nomeCompleto,
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  Center(child: Text(usuario.email, style: TextStyle(fontSize: 16))),
                  const SizedBox(height: 16),

                  CustomButtomWidget(
                    texto: 'Alterar Nome',
                    clique: () => context.push(AppRoutesNames.alterarNome, extra: usuario),
                  ),
                  const SizedBox(height: 16),

                  CustomButtomWidget(
                    texto: 'Alterar E-mail',
                    clique: () => context.push(AppRoutesNames.alterarEmail, extra: usuario),
                  ),
                  const SizedBox(height: 16),

                  CustomButtomWidget(
                    texto: 'Alterar Senha',
                    clique: () => context.push(AppRoutesNames.alterarSenha, extra: usuario),
                  ),
                  const SizedBox(height: 16),

                  CustomButtomWidget(texto: 'Deslogar', clique: () => deslogarNotifier.deslogar()),
                  const SizedBox(height: 16),

                  CustomButtomWidget(
                    texto: 'Excluir Conta',
                    clique: () => context.push(AppRoutesNames.deletarConta, extra: usuario),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
