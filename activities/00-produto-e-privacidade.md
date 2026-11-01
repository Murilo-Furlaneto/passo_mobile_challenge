# Atividade 00 — Produto, regras e privacidade

## Cenário

Passo é um app pessoal de corrida e caminhada. O primeiro corte serve uma pessoa, salva sessões localmente e funciona sem conta/rede.

## Regras do MVP

1. Tipos: caminhada e corrida. Sessão começa `idle`, pode `running ↔ paused`, depois `completed` ou `discarded`. Sessão final não volta a ativa.
2. Iniciar exige decisão explícita do usuário e permissão de localização durante uso. Recusa não fecha o app; ofereça modo demonstração com rota simulada.
3. Só coleta coordenadas enquanto uma atividade está ativa. Pausar/finalizar cancela stream e temporizador; pausar não acumula tempo nem distância.
4. Filtre coordenada inválida, precisão ruim, timestamp antigo e saltos implausíveis; documente limiar escolhido. Não esconda que GPS pode errar.
5. Distância é calculada em metros; exiba em km. Ritmo é calculado a partir de tempo ativo/distância válida e tem estado “calculando” se distância insuficiente.
6. App não promete precisão médica, competição oficial ou navegação. Rota não é enviada para servidor.
7. Acesso de localização “sempre” não é pedido no fluxo inicial. Para tela apagada, usuário inicia foreground service com atividade visível e vê notificação persistente; finalize/cancele o serviço ao pausar ou terminar conforme sua política documentada.
8. Permissão negada, localização desligada, precisão aproximada e timeout têm explicação/alternativa. Não entre em loop de pedir permissão.
9. Sessão salva inclui início/fim, tipo, duração ativa, distância e pontos mínimos necessários para redesenhar a rota. Não salve histórico de localização fora das sessões.
10. Notificações são opt-in, podem ser canceladas nas configurações e nunca incluem coordenadas.
11. Fixtures/GPX são sintéticos. Não comite uma trilha real, chave, identificador de aparelho nem screenshot com endereço.

## Antes de codar

- Desenhe fluxo inicial, permissão aceita/negada, tracking, pausa, interrupção e recuperação.
- Liste estados e eventos da sessão.
- Esboce critérios para ignorar pontos GPS ruidosos e como testar com fake.
- Registre escolhas de precisão, frequência e bateria em `DECISIONS.md`.

## Acessibilidade

escala de fonte, certifique-se de não fixar alturas rígidas em containers com texto, deixando o MediaQuery.textScalerOf(context) escalar os textos livremente sem cortar os componentes