import 'package:feature_autentication/core/theme/app_theme_light.dart';
import 'package:feature_autentication/navigate/app_navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appNavigation);

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      theme: AppTheme.lightTheme,
      // home: const CadastroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
