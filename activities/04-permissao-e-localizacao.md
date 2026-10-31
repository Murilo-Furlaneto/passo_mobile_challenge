# Atividade 04 — Permissão e localização

Defina interface de `LocationSource` para checar serviços/permissão, solicitar permissão contextual e fornecer stream de pontos. Adapte Geolocator atrás dela. O botão Iniciar explica por que precisa da localização antes de abrir o diálogo do SO.

Trate granted, denied, denied forever, approximate, GPS desligado e timeout. Não peça localização em background nessa etapa. Inclua implementação fake que emite pontos conhecidos para demo/emulador e testes; a tela deve continuar navegável após recusa.

**Aceite:** permissões são mínimas, solicitadas no contexto, e cada recusa tem próximo passo claro.
