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
                if (state.erroNome != null)
                  Text(state.erroNome ?? '' , style: TextStyle(color: Colors.red)),
                const SizedBox(height: 10),

                const Text('Sobrenome'),
                TextField(
                  controller: _sobrenomeCtrl,
                  onChanged: (v) => notifier.setSobrenome(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: Silva'),
                ),
                if (state.erroSobrenome != null)
                  Text(state.erroSobrenome ?? '' , style: TextStyle(color: Colors.red)),
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
                if (state.erroEmail != null)
                  Text(state.erroEmail ?? '' , style: TextStyle(color: Colors.red)),
                const SizedBox(height: 10),

                const Text('Senha'),
                TextField(
                  controller: _senhaCtrl,
                  onChanged: (v) => notifier.setSenha(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: dT2#3d'),
                ),
                if (state.erroSenha != null)
                  Text(state.erroSenha ?? '' , style: TextStyle(color: Colors.red)),
                const SizedBox(height: 10),

                const Text('Confirmar senha'),
                TextField(
                  controller: _confSenhaCtrl,
                  onChanged: (v) => notifier.setConfirmarSenha(v),
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Ex: dT2#3d'),
                ),
                if (state.erroConfirmarSenha != null)
                  Text(state.erroConfirmarSenha ?? '' , style: TextStyle(color: Colors.red)),
                const SizedBox(height: 16),

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      notifier.cadastrar();
                      if (state.erroEmail != null || state.erroSenha != null) {
                        _sobrenomeCtrl.clear();
                        _senhaCtrl.clear();
                        _confSenhaCtrl.clear();
                        _emailCtrl.clear();
                        _nomeCtrl.clear();
                      }
                    },
                    child: const Text('Cadastrar', style: TextStyle(fontSize: 20)),
                  ),
                ),
                if (state.isLoading)
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Center(
                        child: CircularProgressIndicator()
                    ),
                  ),

                if (state.erro != null)
                  Text(state.erro ?? '' , style: TextStyle(color: Colors.red)),
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
