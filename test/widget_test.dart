import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passo_mobile_challenge/main.dart';

void main() {
  testWidgets('app inicia sob ProviderScope', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: PassoApp()));

    expect(find.text('Passo — comece pela atividade 01'), findsOneWidget);
  });
}
