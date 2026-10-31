# Atividade 13 — Entrega e autoavaliação para portfólio

## Evidências para LinkedIn/GitHub

- [ ] App instalado e demo gravada em aparelho; rota da demo é fictícia/simulada.
- [ ] README com problema, público, funcionalidades reais, arquitetura, decisões e limitações.
- [ ] Screenshots: home, tracking ativo, percurso/resumo, histórico e recuperação de permissão negada.
- [ ] Vídeo de 30–60 segundos mostrando iniciar, pausar, retomar, finalizar e abrir percurso.
- [ ] Diagrama curto do fluxo de localização e grafo Riverpod.
- [ ] `dart format --set-exit-if-changed .`, `flutter analyze` e `flutter test` com resultados reais.
- [ ] Nenhuma coordenada pessoal, token ou feature não implementada é apresentada como concluída.

## Rubrica (0–3 por competência)

**0** não consigo; **1** com muita orientação; **2** implemento e explico; **3** antecipo risco, testo bordas e justifico trade-off.

| Competência | Nota |
|---|---:|
| Traduzir problema mobile em fluxo e estados |  |
| Modelar sessão e cálculos puros corretos |  |
| Compor providers e separar estado local/compartilhado |  |
| Controlar streams, cancelamento, lifecycle e retry |  |
| Solicitar permissões mínimas e tratar recusa |  |
| Persistir e recuperar sem duplicar/perder sessão |  |
| Testar sem GPS/relógio real e com overrides |  |
| Construir UI mobile acessível e resiliente |  |
| Diagnosticar bateria, sinal, crash e armazenamento |  |
| Explicar decisões, limitações e privacidade |  |
| **Total (máximo 30)** |  |

### Interpretação

- **0–10:** consolide fundamentos e pequenos fluxos.
- **11–18:** base júnior; foque em autonomia, testes e ciclo de vida.
- **19–24:** júnior forte / sinais de autonomia intermediária neste desafio; busque code review.
- **25–30:** evidências fortes neste contexto, ainda precisam de validação com experiência em equipe, produção e feedback profissional.

A pontuação não concede título. Prepare respostas: por que precisa de location? Como encerra o stream? O que ocorre ao negar? Como pace evita divisão por zero? Como prova pause não soma tempo? Qual parte depende de teste em aparelho?
