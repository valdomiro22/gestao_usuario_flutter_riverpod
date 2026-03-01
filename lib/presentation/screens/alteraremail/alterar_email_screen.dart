import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:feature_autentication/presentation/screens/alteraremail/alterar_email_notifier.dart';
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

class AlterarEmailScreen extends ConsumerStatefulWidget {
  final UsuarioEntity usuario;

  const AlterarEmailScreen({super.key, required this.usuario});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AlterarEmailScreenState();
}

class _AlterarEmailScreenState extends ConsumerState<AlterarEmailScreen> {
  final _novoEmail = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _novoEmail.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarEmailProvider);
    final notifier = ref.watch(alterarEmailProvider.notifier);

    ref.listen(alterarEmailProvider, (previous, next) {
      if (next.isSucess) {
        _novoEmail.clear();
        _senhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Alterar E-mail')),
      body: Container(
        padding: EdgeInsets.all(AppDimens.paddingPagina),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Insira o novo e-mail e a sua senha atual para proceguir com esta ação.',
              style: TextStyle(color: AppColors.secondaryText),
            ),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _novoEmail,
              hint: AppStrings.exemploNome,
              label: 'Novo e-mail',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setNovoEmail(v),
            ),
            if (state.erroNewEmail != null) MensagemErroWidget(mensagem: state.erroNewEmail),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _senhaController,
              hint: AppStrings.exemploSobrenome,
              label: 'Senha atual',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setSenha(v),
            ),
            if (state.erroPassword != null) MensagemErroWidget(mensagem: state.erroPassword),
            if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
            if (state.isLoading) CarregandoWidget(),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar',
              clique: () => notifier.alterar(widget.usuario),
            ),
          ],
        ),
      ),
    );
  }
}