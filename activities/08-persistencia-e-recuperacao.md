# Atividade 08 — Persistência e recuperação

Escolha armazenamento local e registre por que. Salve sessão e pontos em transação; projete migração de schema. Defina se sessão em andamento é restaurada, descartada ou oferecida para recuperação após process death.

Crie DAO/repository testável, backup/limpeza de dados de localização e tratamento de falha ao salvar resumo. Não persista cada posição sem considerar volume/bateria; escolha frequência e estratégia de batch. O histórico deve abrir offline.

**Aceite:** teste de reabertura/migração e nenhuma sessão concluída some se o processo for encerrado no momento errado.
