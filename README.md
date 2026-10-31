# Passo — desafio mobile com Flutter e Riverpod

App mobile de corrida e caminhada que grava uma sessão no próprio telefone: inicia, pausa, retoma, acompanha distância/tempo/ritmo, desenha o percurso, salva histórico offline e pode lembrar o usuário de uma meta. O produto foi escolhido para que GPS, permissões e ciclo de vida do app sejam parte central da experiência — não um painel web adaptado para celular.

O app usa somente dados locais/fictícios. Não há conta, backend, feed social nem chave de mapa. A trilha GPS pode ser desenhada por você com `CustomPainter`, sem SDK ou tile externo.

## Comece

1. Abra a pasta como projeto Flutter no Android Studio ou VS Code.
2. Rode `flutter pub get`, `flutter analyze` e `flutter test`.
3. Use um aparelho ou emulador Android. No emulador, configure uma rota simulada para testar GPS.
4. Leia `activities/00-produto-e-privacidade.md` antes de implementar a localização.
5. Siga as atividades; não peça permissões até a feature que precisa delas existir.

`ProviderScope` e um teste smoke já estão no esqueleto. A experiência de treino é o seu trabalho.

## Experiência principal

**Tela inicial → escolher corrida/caminhada → conceder localização durante uso → iniciar → pausar/retomar → finalizar → ver resumo e percurso → consultar histórico sem internet.**

A localização é coletada apenas durante uma atividade iniciada pelo usuário. Para continuar com a tela apagada, a implementação avançada precisa de serviço em primeiro plano e notificação persistente, com consentimento e encerramento claros. A atividade 07 cobre as exigências Android; o app não solicita acesso permanente por padrão.

## Trilha de implementação

| Etapa | Atividade | Evidência mobile/Riverpod |
|---|---|---|
| 0 | [Produto e privacidade](activities/00-produto-e-privacidade.md) | Requisitos, permissões e dados locais |
| 1 | [Experiência mobile e navegação](activities/01-experiencia-mobile.md) | Hierarquia touch-first, estados e rotas |
| 2 | [Domínio e sessão](activities/02-dominio-e-sessao.md) | Máquina de estados e cálculos puros |
| 3 | [Riverpod e dados derivados](activities/03-riverpod-e-derivados.md) | Notifier, providers derivados e rebuilds |
| 4 | [Permissão e localização](activities/04-permissao-e-localizacao.md) | Adapter GPS, permissões e fallback fake |
| 5 | [Tracking ao vivo](activities/05-tracking-ao-vivo.md) | Stream de posição, filtro de ruído e ritmo |
| 6 | [Timer, pausa e lifecycle](activities/06-timer-pausa-lifecycle.md) | Tempo correto ao pausar/minimizar/retomar |
| 7 | [Tela apagada e foreground service](activities/07-tracking-em-segundo-plano.md) | Notificação Android e encerramento seguro |
| 8 | [Persistência e recuperação](activities/08-persistencia-e-recuperacao.md) | Sessão local, crash/restart e migração |
| 9 | [Percurso e histórico](activities/09-percurso-e-historico.md) | CustomPainter, resumo e filtros |
| 10 | [Lembretes locais](activities/10-notificacoes-locais.md) | Permissão contextual e agendamento cancelável |
| 11 | [Testes](activities/11-testes.md) | Fake GPS/clock e overrides de providers |
| 12 | [Polimento mobile](activities/12-polimento-mobile.md) | Acessibilidade, bateria, permissões e QA real |
| 13 | [Entrega e autoavaliação](activities/13-entrega-e-autoavaliacao.md) | Demo, screenshots, rubrica e LinkedIn |

## Como praticar Riverpod

- Use providers como grafo reativo/dependências; deixe texto de formulário e estado efêmero local no widget quando isso for suficiente.
- Comece com providers manuais. Use `NotifierProvider` para a máquina de estados da sessão, e providers derivados para distância/ritmo/resumo.
- Injete um contrato `LocationSource`; o provider real usa Geolocator, testes usam stream fake.
- `ref.watch` constrói dependências reativas, `ref.read` dispara ações, `ref.listen` reage a efeitos de interface. Evite esconder dependência com `read` no build.
- Faça a assinatura do GPS e timer serem canceláveis com `ref.onDispose`; não deixe streams/timers órfãos ao sair/finalizar.
- Teste providers com `ProviderContainer.test()`/overrides e widgets dentro de `ProviderScope`.
- Riverpod 3 faz retry automático em certos erros de provider. Permissão negada não é erro transitório; defina política explícita.
- Codegen é opcional e será comparado após a serialização de sessões/GPX já justificar build_runner.

## Critério de conclusão

O usuário consegue iniciar uma caminhada/corrida, receber explicação de permissão no momento certo, acompanhar métricas, pausar/retomar, finalizar, consultar percurso/histórico offline e recuperar-se de GPS desligado/permissão negada. Tracking com tela apagada exibe notificação persistente e para quando a atividade termina. Regras, cálculos e estados de falha têm testes determinísticos.

## Para portfólio

A atividade 13 pede screenshots reais de telefone, vídeo curto da sessão, README com arquitetura/decisões, GIF do percurso e instruções de teste em emulador. Use apenas rota fictícia para demonstração; oculte/exclua coordenadas pessoais dos artefatos Git e da demo.

## Referências oficiais

- [Riverpod: providers](https://riverpod.dev/docs/concepts2/providers)
- [Riverpod: testes](https://riverpod.dev/docs/how_to/testing)
- [Flutter: ciclo de vida do app](https://api.flutter.dev/flutter/dart-ui/AppLifecycleState.html)
- [Geolocator: permissões e foreground service](https://pub.dev/packages/geolocator)
- [Android: permissões de localização](https://developer.android.com/develop/sensors-and-location/location/permissions)
- [Android: tipos de foreground service](https://developer.android.com/about/versions/14/changes/fgs-types-required)
