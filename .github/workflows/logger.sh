#!/bin/bash
# O GitHub Actions passa o comando do step como um arquivo temporário ($1)
COMMAND_CONTENT=$(cat "$1")

echo "::group::🚀 Início do step"
# Nota: O shell não sabe o 'name' do step do YAML nativamente, 
# mas podemos logar o comando que será executado:
echo "Comando: $COMMAND_CONTENT"
echo "-----------------------------------"

# Executa o comando original
bash "$1"
EXIT_CODE=$?

echo "-----------------------------------"
echo "::endgroup::"

if [ $EXIT_CODE -eq 0 ]; then
  echo "✅ Fim do step: Sucesso"
else
  echo "❌ Fim do step: Falha (Exit code: $EXIT_CODE)"
fi

exit $EXIT_CODE
