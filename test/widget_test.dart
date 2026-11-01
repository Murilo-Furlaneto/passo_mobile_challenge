import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passo_mobile_challenge/main.dart';

void main() {
  testWidgets('home exibe resumo da atividade e controles principais', (
    tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: PassoApp()));

    expect(find.text('Workout Tracker'), findsOneWidget);
    expect(find.text('Olá, Atleta'), findsOneWidget);
    expect(find.text('META SEMANAL'), findsOneWidget);
    expect(find.text('Última Atividade'), findsOneWidget);
    expect(find.text('INICIAR ATIVIDADE'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
  });
}
