import 'package:feature_autentication/core/common/widgets/custom_buttom_widget.dart';
import 'package:feature_autentication/navigate/app_routes_names.dart';
import 'package:feature_autentication/presentation/buscarusuario/buscar_usuario_notifier.dart';
import 'package:feature_autentication/presentation/deslogar/deslogar_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
            CustomButtomWidget(texto: 'Configurações', clique: () => context.push(AppRoutesNames.configuracoesUsuario))
          ],
        ),
      ),
    );
  }
}
