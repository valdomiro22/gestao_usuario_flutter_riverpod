import 'package:feature_autentication/core/common/widgets/carregando_widget.dart';
import 'package:feature_autentication/core/common/widgets/custom_textfiewd_com_icone.dart';
import 'package:feature_autentication/core/common/widgets/mensagem_erro_widget.dart';
import 'package:feature_autentication/presentation/screens/recuperarsenha/recuperar_senha_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_dimens.dart';
import '../../../core/constants/app_strings.dart';

class RecuperarSenhaScreen extends ConsumerStatefulWidget {
  const RecuperarSenhaScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecuperarSenhaScreenState();
}

class _RecuperarSenhaScreenState extends ConsumerState<RecuperarSenhaScreen> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(recuperarSenhaProvider);
    final notifier = ref.watch(recuperarSenhaProvider.notifier);

    ref.listen(recuperarSenhaProvider, (previous, next) {
      if (true && next.isSucess) {
        _emailController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Recuperar Senha')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.espacamentoG),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppDimens.espacamentoXG),

            Icon(Icons.lock_reset, size: 100, color: Colors.red),
            const SizedBox(height: AppDimens.espacamentoXG),

            Text('Digite o email para receber um link de redefinição de senha.'),
            const SizedBox(height: AppDimens.espacamentoG),
            CustomTextfiewdConIcone(
              controller: _emailController,
              label: 'E-mail',
              icone: Icons.email_outlined,
              hint: AppStrings.exemploEmail,
              inputType: TextInputType.emailAddress,
              onChanged: (value) => notifier.setEmail(value),
            ),
            if (state.erroEmail != null) MensagemErroWidget(mensagem: state.erroEmail),
            if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
            if (state.isLoading) CarregandoWidget(),

            const SizedBox(height: AppDimens.espacamentoG),
            ElevatedButton(
              onPressed: () => ref.read(recuperarSenhaProvider.notifier).enviarLink(),
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
