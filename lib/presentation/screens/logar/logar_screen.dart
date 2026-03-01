import 'package:feature_autentication/core/common/widgets/carregando_widget.dart';
import 'package:feature_autentication/core/common/widgets/mensagem_erro_widget.dart';
import 'package:feature_autentication/navigate/app_routes_names.dart';
import 'package:feature_autentication/presentation/screens/logar/logar_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogarScreen extends ConsumerStatefulWidget {
  const LogarScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LogarScreen> {
  final _emailCtrl = TextEditingController();
  final _senhaCtrl = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _senhaCtrl.dispose();
    _emailCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(logarProvider);
    final notifier = ref.watch(logarProvider.notifier);

    ref.listen(logarProvider, (previous, next) {
      if (next.isSucess) {
        _emailCtrl.clear();
        _senhaCtrl.clear();
      }
    });

    return Scaffold(
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
                TextField(
                  controller: _emailCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ex: joao.silva@test.com',
                  ),
                  onChanged: (v) => notifier.setEmail(v),
                ),
                if (state.erroEmail != null) MensagemErroWidget(mensagem: state.erroEmail),
                const SizedBox(height: 10),

                const Text('Senha'),
                TextField(
                  controller: _senhaCtrl,
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: dT2#3d'),
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

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      notifier.logar();
                      if (state.erroEmail != null || state.erroSenha != null) {
                        _emailCtrl.clear();
                        _senhaCtrl.clear();
                      }
                    },
                    child: const Text('Logar', style: TextStyle(fontSize: 20)),
                  ),
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
    );
  }
}
