import 'package:feature_autentication/core/common/widgets/carregando_widget.dart';
import 'package:feature_autentication/core/common/widgets/custom_textfiewd_com_icone.dart';
import 'package:feature_autentication/core/common/widgets/mensagem_erro_widget.dart';
import 'package:feature_autentication/navigate/app_routes_names.dart';
import 'package:feature_autentication/presentation/screens/logar/logar_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogarScreen extends ConsumerStatefulWidget {
  const LogarScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LogarScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _senhaController.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(logarProvider);
    final notifier = ref.watch(logarProvider.notifier);

    ref.listen(logarProvider, (previous, next) {
      if (next.isSucess) {
        _emailController.clear();
        _senhaController.clear();
      }
    });

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Login', style: TextStyle(fontSize: 42)),
                  const SizedBox(height: 20),

                  const Text('Email'),
                  CustomTextfiewdConIcone(
                    controller: _emailController,
                    icone: Icons.email,
                    inputType: TextInputType.emailAddress,
                    onChanged: (v) => notifier.setEmail(v),
                    hint: 'Digite seu e-mail',
                  ),
                  if (state.erroEmail != null) MensagemErroWidget(mensagem: state.erroEmail),
                  const SizedBox(height: 10),

                  CustomTextfiewdConIcone(
                    controller: _senhaController,
                    icone: Icons.lock,
                    inputType: TextInputType.visiblePassword,
                    hint: 'Digite sua senha',
                    obscureText: true,
                    onChanged: (v) => notifier.setSenha(v),
                  ),
                  if (state.erroSenha != null) MensagemErroWidget(mensagem: state.erroSenha),
                  if (state.erro != null) MensagemErroWidget(mensagem: state.erro),

                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => context.push(AppRoutesNames.recuperarSenha),
                      child: Text('Recuperar Senha'),
                    ),
                  ),
                  if (state.isLoading) CarregandoWidget(),
                  const SizedBox(height: 16),

                  ElevatedButton(
                    onPressed: () => notifier.logar(),
                    child: const Text('Logar', style: TextStyle(fontSize: 20)),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ainda não possui uma consta?'),
                      const SizedBox(width: 2),
                      TextButton(
                        onPressed: () => context.push(AppRoutesNames.cadastro),
                        child: const Text('Cadastrar'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
