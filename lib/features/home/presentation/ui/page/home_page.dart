import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/componentes/activity_section.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/componentes/activity_stats.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/componentes/athlete_card.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/componentes/home_navigation_bar.dart';
import 'package:passo_mobile_challenge/features/home/presentation/ui/componentes/weekly_goal_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Scaffold(
      backgroundColor: AppColors.neutral,
      appBar: AppBar(
        toolbarHeight: 48,
        backgroundColor: AppColors.neutral,
        foregroundColor: Colors.white,
        leadingWidth: 42,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, size: 20),
          tooltip: 'Voltar',
        ),
        title: Text('Workout Tracker', style: textTheme.titleMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, size: 20),
            tooltip: 'Mais opções',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  AthleteCard(),
                  SizedBox(height: 14),
                  WeeklyGoalCard(),
                  SizedBox(height: 14),
                  ActivitySection(),
                  SizedBox(height: 12),
                  StatsRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: SizedBox(
              width: double.infinity,
              height: 44,
              child: FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow, size: 20),
                label: Text(
                  'INICIAR ATIVIDADE',
                  style: textTheme.labelLarge?.copyWith(
                    color: AppColors.neutral,
                    letterSpacing: 0.6,
                  ),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.neutral,
                  shape: const StadiumBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const HomeNavigationBar(),
    );
  }
}
