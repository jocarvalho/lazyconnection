#!/bin/bash

echo "[INFO] Iniciando Fortify Static Code Analyzer (SCA)..."
echo "[INFO] Versão: 22.1.0.0022"
echo "[INFO] Localizando arquivos fonte..."
sleep 1

echo "[INFO] Lendo configurações do projeto (.fortify)..."
echo "[INFO] Traduzindo arquivos Java e JavaScript..."
sleep 2

# Simula progresso de análise
for i in {10..90..20}
do
  echo "[PROGRESS] Analisando arquivos: $i% concluído..."
  sleep 0.5
done

echo "------------------------------------------------------------"
echo "🚨 ERRO DETECTADO DURANTE A FASE DE SCAN"
echo "------------------------------------------------------------"
echo "[ERROR] Fortify Analyzer engine failed unexpectedly."
echo "[ERROR] Reason: java.lang.OutOfMemoryError: Java heap space"
echo "[ERROR] StackTrace: 
    at com.fortify.analysis.ParallelEngine.process(ParallelEngine.java:452)
    at com.fortify.analysis.Core.start(Core.java:128)
    at com.fortify.Main.main(Main.java:54)"
echo "------------------------------------------------------------"
echo "[TIP] Tente aumentar a memória via parâmetro -Xmx ou ajustando a variável de ambiente USER_OPTS."

# Finaliza com erro para disparar o logger.sh e a triagem
exit 1