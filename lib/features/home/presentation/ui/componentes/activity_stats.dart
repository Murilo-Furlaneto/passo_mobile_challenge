import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: StatCard(
            icon: Icons.favorite,
            iconColor: Color(0xFFFF9DA6),
            title: 'Freq. Cardíaca',
            value: '148',
            unit: 'BPM',
            caption: 'Estável · Ritmo ideal',
            captionColor: AppColors.tertiary,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: StatCard(
            icon: Icons.local_fire_department,
            iconColor: AppColors.primary,
            title: 'Gasto Calórico',
            value: '392',
            unit: 'kcal',
            caption: '+12% vs. semana pass.',
            captionColor: AppColors.secondaryText,
          ),
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  const StatCard({super.key, 
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value,
    required this.unit,
    required this.caption,
    required this.captionColor,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;
  final String unit;
  final String caption;
  final Color captionColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Container(
      constraints: const BoxConstraints(minHeight: 88),
      padding: const EdgeInsets.fromLTRB(12, 10, 10, 9),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.labelSmall?.copyWith(
                    color: AppColors.secondaryText,
                    fontSize: 9,
                    height: 1.2,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Icon(icon, size: 13, color: iconColor),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontSize: 17,
                  height: 1,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(width: 3),
              Text(
                unit,
                style: textTheme.labelSmall?.copyWith(
                  color: AppColors.secondaryText,
                  fontSize: 8,
                  height: 1,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            caption,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.labelSmall?.copyWith(
              color: captionColor,
              fontSize: 8,
              height: 1.2,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
