import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Container(
      height: 55,
      decoration: const BoxDecoration(
        color: AppColors.neutral,
        border: Border(top: BorderSide(color: Color(0xFF292C2F), width: 0.6)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationItem(
            icon: Icons.directions_run,
            label: 'Home',
            selected: true,
            textTheme: textTheme,
          ),
          NavigationItem(
            icon: Icons.history,
            label: 'History',
            textTheme: textTheme,
          ),
          NavigationItem(
            icon: Icons.person_outline,
            label: 'Profile',
            textTheme: textTheme,
          ),
        ],
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  const NavigationItem({super.key, 
    required this.icon,
    required this.label,
    required this.textTheme,
    this.selected = false,
  });

  final IconData icon;
  final String label;
  final TextTheme textTheme;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.primary : AppColors.secondaryText;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 29,
          alignment: Alignment.center,
          decoration: selected
              ? BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(18),
                )
              : null,
          child: Icon(icon, size: 17, color: color),
        ),
        const SizedBox(height: 1),
        Text(
          label,
          style: textTheme.labelSmall?.copyWith(
            color: color,
            fontSize: 9,
            height: 1,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
