import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';

class WeeklyGoalCard extends StatelessWidget {
  const WeeklyGoalCard({super.key});

  static const _days = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SÁB', 'DOM'];
  static const _completedDays = {0, 1, 3, 4};

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 13),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'META SEMANAL',
                    style: textTheme.labelSmall?.copyWith(
                      color: AppColors.secondaryText,
                      fontSize: 9,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 3),
                  RichText(
                    text: TextSpan(
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontSize: 11,
                        height: 1,
                        letterSpacing: 0,
                      ),
                      children: const [
                        TextSpan(
                          text: '24.8',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(text: ' / 35.0 km'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: AppColors.chip,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '71% concluído',
                  style: textTheme.labelSmall?.copyWith(
                    color: AppColors.primary,
                    fontSize: 9,
                    height: 1,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const LinearProgressIndicator(
              value: 0.71,
              minHeight: 5,
              backgroundColor: Color(0xFF34383B),
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Dias Ativos nesta Semana',
            style: textTheme.labelSmall?.copyWith(
              color: AppColors.secondaryText,
              fontSize: 9,
              height: 1.2,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_days.length, (index) {
              final isCompleted = _completedDays.contains(index);
              final isToday = index == 5;
              final circleColor = isCompleted
                  ? AppColors.primary
                  : AppColors.dayInactive;

              return Column(
                children: [
                  Text(
                    _days[index],
                    style: textTheme.labelSmall?.copyWith(
                      color: isToday ? AppColors.primary : AppColors.secondaryText,
                      fontSize: 8,
                      height: 1,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 21,
                    height: 21,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: circleColor,
                      shape: BoxShape.circle,
                      border: isToday
                          ? Border.all(color: AppColors.primary, width: 1)
                          : null,
                    ),
                    child: isCompleted
                        ? const Icon(Icons.check, size: 13, color: AppColors.neutral)
                        : isToday
                            ? Text(
                                'HOJE',
                                style: textTheme.labelSmall?.copyWith(
                                  color: AppColors.primary,
                                  fontSize: 6,
                                  height: 1,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0,
                                ),
                              )
                            : null,
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
