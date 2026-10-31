# Atividade 07 — Tela apagada e foreground service (Android)

Evolua o tracking para continuar com tela apagada apenas enquanto a sessão está ativa. Inicie o serviço quando a Activity está visível, mostre notificação persistente com estado/ação de finalizar, declare permissões/tipo de serviço corretos e encerre serviço/stream quando sessão terminar.

Leia requisitos atuais de Android e Geolocator antes de alterar Manifest. Explique diferença entre localização enquanto usa o app, serviço em primeiro plano e acesso “sempre”. Nunca solicite `ACCESS_BACKGROUND_LOCATION` como atalho se foreground service resolve o caso.

Teste em Android 13/14+ e em aparelho real, incluindo negar notificação, iniciar após negar localização, pausar, voltar e force-stop. Se serviço não puder iniciar, degrade com mensagem e opção de manter app visível.
