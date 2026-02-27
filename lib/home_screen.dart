import 'package:feature_autentication/core/common/widgets/custom_buttom_widget.dart';
import 'package:feature_autentication/presentation/deslogar/deslogar_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deslogarNotifier = ref.watch(deslogarProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButtomWidget(
              texto: 'Alterar Nome',
              clique: () {},
            ),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar E-mail',
              clique: () {},
            ),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar Senha',
              clique: () {},
            ),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Deslogar',
              clique: () => deslogarNotifier.deslogar(),
            ),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Excluir Conta',
              clique: () {},
            ),

          ],
        ),
      ),
    );
  }
}
