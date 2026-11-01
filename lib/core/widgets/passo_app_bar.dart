import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:passo_mobile_challenge/core/log/app_logger.dart';

class PassoAppBar extends StatelessWidget {
  const PassoAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          AppLogger.log(
            Level.debug,
            className: 'PassoAppBar',
            methodName: 'onPopInvokedWithResult',
            message: 'A tela voltou!',
          );
        } else {
          debugPrint('Não foi possível voltar!');
        }
      },
      child: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
    );
  }
}
