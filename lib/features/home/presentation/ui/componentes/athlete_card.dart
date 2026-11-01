import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';

class AthleteCard extends StatelessWidget {
  const AthleteCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Container(
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary, width: 1.5),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF174E57), Color(0xFF263B49)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(
                  Icons.directions_run,
                  color: AppColors.primary,
                  size: 22,
                ),
              ),
              Positioned(
                right: -1,
                bottom: -1,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: AppColors.tertiary,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.surface, width: 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Olá, Atleta',
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '⚡ Pronto para treinar hoje',
                  style: textTheme.labelSmall?.copyWith(
                    color: AppColors.secondaryText,
                    fontSize: 9,
                    height: 1.2,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.chip,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.local_fire_department,
                    color: AppColors.primary, size: 11),
                const SizedBox(width: 2),
                Text(
                  '5 Dias',
                  style: textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontSize: 9,
                    height: 1,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
