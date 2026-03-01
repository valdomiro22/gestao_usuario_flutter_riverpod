import 'package:feature_autentication/core/common/widgets/carregando_widget.dart';
import 'package:feature_autentication/core/common/widgets/custom_buttom_widget.dart';
import 'package:feature_autentication/core/common/widgets/custom_textfiewd_sem_icone.dart';
import 'package:feature_autentication/core/common/widgets/mensagem_erro_widget.dart';
import 'package:feature_autentication/core/constants/app_dimens.dart';
import 'package:feature_autentication/core/constants/app_strings.dart';
import 'package:feature_autentication/core/theme/app_colors.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:feature_autentication/presentation/screens/alterarnome/alterar_nome_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AlterarNomeScreen extends ConsumerStatefulWidget {
  final UsuarioEntity usuario;

  const AlterarNomeScreen({super.key, required this.usuario});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AlterarNomeScreenState();
}

class _AlterarNomeScreenState extends ConsumerState<AlterarNomeScreen> {
  final _nomeController = TextEditingController();
  final _sobrenomeController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _sobrenomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarNomeProvider);
    final notifier = ref.watch(alterarNomeProvider.notifier);

    ref.listen(alterarNomeProvider, (previous, next) {
      if (next.isSucess) {
        _nomeController.clear();
        _sobrenomeController.clear();
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
              'Insira o novo nome e sobrenome para proceguir com esta ação.',
              style: TextStyle(color: AppColors.secondaryText),
            ),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _nomeController,
              hint: AppStrings.exemploNome,
              label: 'Nome',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setNome(v),
            ),
            if (state.erroNome != null) MensagemErroWidget(mensagem: state.erroNome),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _sobrenomeController,
              hint: AppStrings.exemploSobrenome,
              label: 'Sobrenome',
              inputType: TextInputType.name,
              comBorda: true,
              onChanged: (v) => notifier.setSobrenome(v),
            ),
            if (state.erroSobreNome != null) MensagemErroWidget(mensagem: state.erroSobreNome),
            if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
            if (state.isLoading) CarregandoWidget(),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar',
              clique: () {
                notifier.alterar(widget.usuario);
                if (state.erroNome != null || state.erroSobreNome != null) {
                  _nomeController.clear();
                  _sobrenomeController.clear();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
