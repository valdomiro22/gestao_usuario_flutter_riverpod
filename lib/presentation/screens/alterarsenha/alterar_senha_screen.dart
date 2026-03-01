import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:feature_autentication/presentation/screens/alterarsenha/alterar_senha_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/widgets/carregando_widget.dart';
import '../../../core/common/widgets/custom_buttom_widget.dart';
import '../../../core/common/widgets/custom_textfiewd_sem_icone.dart';
import '../../../core/common/widgets/mensagem_erro_widget.dart';
import '../../../core/constants/app_dimens.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_colors.dart';

class AlterarSenhaScreen extends ConsumerStatefulWidget {
  final UsuarioEntity usuario;
  
  const AlterarSenhaScreen({super.key, required this.usuario,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AlterarSenhaScreenState();
}

class _AlterarSenhaScreenState extends ConsumerState<AlterarSenhaScreen> {
  final _novaSenhaController = TextEditingController();
  final _senhaAtualController = TextEditingController();

  @override
  void dispose() {
    _novaSenhaController.dispose();
    _senhaAtualController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarSenhaProvider);
    final notifier = ref.watch(alterarSenhaProvider.notifier);

    ref.listen(alterarSenhaProvider, (previous, next) {
      if (next.isSucess) {
        _novaSenhaController.clear();
        _senhaAtualController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Alterar Senha')),
      body: Container(
        padding: EdgeInsets.all(AppDimens.paddingPagina),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Insira a nova senha e a sua senha atual para proceguir com esta ação.',
              style: TextStyle(color: AppColors.secondaryText),
            ),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _novaSenhaController,
              hint: AppStrings.exemploNome,
              label: 'Nova senha',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setNovaSenha(v),
            ),
            if (state.erroNovaSenha != null) MensagemErroWidget(mensagem: state.erroNovaSenha),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _senhaAtualController,
              hint: AppStrings.exemploSobrenome,
              label: 'Senha atual',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setSenhaAtual(v),
            ),
            if (state.erroSenhaAtual != null) MensagemErroWidget(mensagem: state.erroSenhaAtual),
            if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
            if (state.isLoading) CarregandoWidget(),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar',
              clique: () {
                notifier.alterar(widget.usuario);
              },
            ),
          ],
        ),
      ),
    );
  }
}