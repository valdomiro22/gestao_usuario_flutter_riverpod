import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:feature_autentication/presentation/screens/deletarconta/deletar_conta_notifier.dart';
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

class DeletarContaScreen extends ConsumerStatefulWidget {
  final UsuarioEntity usuario;

  const DeletarContaScreen({super.key, required this.usuario});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DeletarContaScreenState();
}

class _DeletarContaScreenState extends ConsumerState<DeletarContaScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deletarContaProvider);
    final notifier = ref.watch(deletarContaProvider.notifier);

    ref.listen(deletarContaProvider, (previous, next) {
      if (next.isSucess) {
        _emailController.clear();
        _senhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Alterar Nome')),
      body: Container(
        padding: EdgeInsets.all(AppDimens.paddingPagina),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Insira seu e-mail e senha atual para proceguir com esta ação.',
              style: TextStyle(color: AppColors.secondaryText),
            ),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _emailController,
              hint: AppStrings.exemploNome,
              label: 'E-mail',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setEmail(v),
            ),
            if (state.emailErro != null) MensagemErroWidget(mensagem: state.emailErro),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _senhaController,
              hint: AppStrings.exemploSobrenome,
              label: 'Senha',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setSenha(v),
            ),
            if (state.senhaErro != null) MensagemErroWidget(mensagem: state.senhaErro),
            if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
            if (state.isLoading) CarregandoWidget(),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar',
              clique: () {
                FocusScope.of(context).unfocus();  // TODO - ver se isso esta sendo util

                if (!notifier.validar()) return;

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Row(
                        children: [
                          Icon(Icons.warning, color: AppColors.primaryRed),
                          SizedBox(width: 4),
                          Text('Alerta!', style: TextStyle(color: AppColors.primaryDarkText)),
                        ],
                      ),
                      content: Text(
                        'Está ação não podera ser revertida. Você realmente deseja excluir a sua conta?',
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                          child: Text('Cancelar', style: TextStyle(color: Colors.black)),
                        ),
                        TextButton(
                          onPressed: () async {
                            notifier.deletar(widget.usuario.id!);
                            Navigator.of(context).pop();
                          },
                          child: Text('Deletar', style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
