# Atividade 03 — Riverpod e estado derivado

Crie estado compartilhado para a sessão ativa com provider manual (`NotifierProvider`). Crie providers derivados para duração, distância, ritmo e progresso; não armazene esses totais em paralelo se puder derivá-los dos pontos/sessão.

A tela usa `ConsumerWidget`/`WidgetRef`. Explique cada `watch`, `read` e eventual `listen`; mantenha campos de formulário no widget. Teste independência de containers e uma transição start/pause/resume com `ProviderContainer.test()`.

**Aceite:** tela recompõe quando a fonte muda e o estado não sobrevive acidentalmente entre testes.
