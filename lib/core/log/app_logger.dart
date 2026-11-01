import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._();

  static final Logger instance = Logger(
    filter: kDebugMode ? DevelopmentFilter() : ProductionFilter(),
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  static void log(
    Level level, {
    required String className,
    required String methodName,
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    instance.log(
      level,
      '[$className.$methodName] $message',
      error: error,
      stackTrace: stackTrace,
    );
  }
}
