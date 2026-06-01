#!/bin/bash
# Joke Lab skill installer for OpenCrabs
# Usage: curl -sL https://raw.githubusercontent.com/leshchenko1979/joke-lab/main/install.sh | bash

set -e

COMMANDS_DIR="${HOME}/.opencrabs"
COMMANDS_FILE="${COMMANDS_DIR}/commands.toml"
TEMP_FILE=$(mktemp)

echo "📦 Installing Joke Lab skill..."

mkdir -p "${COMMANDS_DIR}"

if command -v curl &> /dev/null; then
    curl -sL "https://raw.githubusercontent.com/leshchenko1979/joke-lab/main/commands.toml" -o "${TEMP_FILE}"
elif command -v wget &> /dev/null; then
    wget -q "https://raw.githubusercontent.com/leshchenko1979/joke-lab/main/commands.toml" -O "${TEMP_FILE}"
else
    echo "❌ Neither curl nor wget found."
    exit 1
fi

if [ -f "${COMMANDS_FILE}" ]; then
    echo "" >> "${COMMANDS_FILE}"
    cat "${TEMP_FILE}" >> "${COMMANDS_FILE}"
    echo "✅ Appended to existing ${COMMANDS_FILE}"
else
    cp "${TEMP_FILE}" "${COMMANDS_FILE}"
    echo "✅ Created ${COMMANDS_FILE}"
fi

rm -f "${TEMP_FILE}"

echo ""
echo "🎉 Joke Lab skill installed!"
echo ""
echo "Usage: In OpenCrabs chat, type:"
echo "  /joke-lab make a joke about <topic>"
echo ""
echo "Then run /doctor or start a new session."
