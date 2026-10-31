# Atividade 11 — Testes determinísticos

- **Domínio:** transições, pausa, distância/pace, filtro GPS, bordas de zero pontos.
- **Providers:** container isolado, override de LocationSource/clock/repository, stream cancelada, error/loading/data.
- **Widgets:** permissão negada, sessão ativa, pause/resume, finalize e resumo.
- **Persistência:** reopen/migração/falha de transação.

Não use GPS/relógio/rede reais nos testes unitários. Em widget tests, providencie sequência de posições fake. Em manual QA, teste pelo menos um aparelho e emulador; registre versão Android e resultado.
