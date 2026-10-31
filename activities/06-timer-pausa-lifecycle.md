# Atividade 06 — Timer, pausa e ciclo de vida

Não incremente segundos com um contador que perde tempo quando o SO suspende a tela. Guarde instantes de início/pausa e derive tempo ativo com clock controlável; teste alternância repetida e atraso de frames.

Observe lifecycle: sair/voltar, chamada/overlay, screen off e encerramento do processo. Decida o que o app faz em cada caso; não presuma que timer em widget fica rodando em background. Ao voltar, restaure estado persistido ou peça uma decisão clara.

**Aceite:** duração ativa não inclui pausa nem tempo duplicado após reconstrução.
