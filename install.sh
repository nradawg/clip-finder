#!/bin/bash
# Installs this skill into Claude Code. Run: bash install.sh
set -e
NAME="clip-finder"
DEST="$HOME/.claude/skills/$NAME"
mkdir -p "$DEST"
cp "$(dirname "$0")/SKILL.md" "$DEST/SKILL.md"
echo "Installed. Open Claude Code and type: /$NAME"
