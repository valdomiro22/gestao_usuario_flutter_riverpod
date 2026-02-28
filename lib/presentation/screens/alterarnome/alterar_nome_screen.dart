import 'package:feature_autentication/core/common/widgets/custom_buttom_widget.dart';
import 'package:feature_autentication/core/common/widgets/custom_textfiewd_sem_icone.dart';
import 'package:feature_autentication/core/constants/app_dimens.dart';
import 'package:feature_autentication/core/constants/app_strings.dart';
import 'package:feature_autentication/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlterarNomeScreen extends ConsumerStatefulWidget {
  const AlterarNomeScreen({super.key});

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
            ),
            const SizedBox(height: 16),

            CustomTextfiewdSemIcone(
              controller: _sobrenomeController,
              hint: AppStrings.exemploSobrenome,
              label: 'Sobrenome',
              inputType: TextInputType.name,
              comBorda: true,
            ),
            const SizedBox(height: 16),

            CustomButtomWidget(
              texto: 'Alterar',
              clique: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Alterar'),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
