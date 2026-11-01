import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/page/home_page.dart';

void main() {
  runApp(const ProviderScope(child: PassoApp()));
}

class PassoApp extends StatelessWidget {
  const PassoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
          surface: AppColors.neutral,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
        textTheme: AppTextStyles.textTheme,
        scaffoldBackgroundColor: AppColors.neutral,
      ),
      home: const HomePage(),
    );
  }
}
