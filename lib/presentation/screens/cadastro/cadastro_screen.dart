import 'package:feature_autentication/core/common/widgets/carregando_widget.dart';
import 'package:feature_autentication/core/common/widgets/mensagem_erro_widget.dart';
import 'package:feature_autentication/presentation/screens/cadastro/cadastro_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CadastroScreen extends ConsumerStatefulWidget {
  const CadastroScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends ConsumerState<CadastroScreen> {
  final _nomeCtrl = TextEditingController();
  final _sobrenomeCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _senhaCtrl = TextEditingController();
  final _confSenhaCtrl = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _sobrenomeCtrl.dispose();
    _senhaCtrl.dispose();
    _confSenhaCtrl.dispose();
    _emailCtrl.dispose();
    _nomeCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cadastroProvider);
    final notifier = ref.watch(cadastroProvider.notifier);

    ref.listen(cadastroProvider, (previous, next) {
      if (next.isSucess) {
        _sobrenomeCtrl.clear();
        _senhaCtrl.clear();
        _confSenhaCtrl.clear();
        _emailCtrl.clear();
        _nomeCtrl.clear();

        context.pop();
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Cadastrar', style: TextStyle(fontSize: 42)),
                const SizedBox(height: 20),

                const Text('Nome'),
                TextField(
                  controller: _nomeCtrl,
                  onChanged: (v) => notifier.setNome(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: João'),
                ),
                if (state.erroNome != null) MensagemErroWidget(mensagem: state.erroNome),
                const SizedBox(height: 10),

                const Text('Sobrenome'),
                TextField(
                  controller: _sobrenomeCtrl,
                  onChanged: (v) => notifier.setSobrenome(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: Silva'),
                ),
                if (state.erroSobrenome != null) MensagemErroWidget(mensagem: state.erroSobrenome),
                const SizedBox(height: 10),

                const Text('Email'),
                TextField(
                  controller: _emailCtrl,
                  onChanged: (v) => notifier.setEmail(v),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ex: joao.silva@test.com',
                  ),
                ),
                if (state.erroEmail != null) MensagemErroWidget(mensagem: state.erroEmail),
                const SizedBox(height: 10),

                const Text('Senha'),
                TextField(
                  controller: _senhaCtrl,
                  onChanged: (v) => notifier.setSenha(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: dT2#3d'),
                ),
                if (state.erroSenha != null) MensagemErroWidget(mensagem: state.erroSenha),
                const SizedBox(height: 10),

                const Text('Confirmar senha'),
                TextField(
                  controller: _confSenhaCtrl,
                  onChanged: (v) => notifier.setConfirmarSenha(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: dT2#3d'),
                ),
                if (state.erroConfirmarSenha != null) MensagemErroWidget(mensagem: state.erroConfirmarSenha),
                const SizedBox(height: 16),

                ElevatedButton(
                  onPressed: () => notifier.cadastrar(),
                  child: const Text('Cadastrar', style: TextStyle(fontSize: 20)),
                ),
                if (state.erro != null) MensagemErroWidget(mensagem: state.erro),
                if (state.isLoading) CarregandoWidget(),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ainda não possui uma consta?'),
                    const SizedBox(width: 2),
                    TextButton(onPressed: () => context.pop(), child: const Text('Logar')),
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
