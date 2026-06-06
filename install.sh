#!/bin/bash

SKILL_NAME="gamja-retro"
REPO="eyegnittab/gamja-retro"
RAW_BASE="https://raw.githubusercontent.com/$REPO/main"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 설치 경로 탐색 (Claude Code / Codex 둘 다 지원)
if [ -d "$HOME/.claude/skills" ]; then
  INSTALL_DIR="$HOME/.claude/skills/$SKILL_NAME"
elif [ -d "$HOME/.agents/skills" ]; then
  INSTALL_DIR="$HOME/.agents/skills/$SKILL_NAME"
else
  INSTALL_DIR="$HOME/.claude/skills/$SKILL_NAME"
  mkdir -p "$HOME/.claude/skills"
fi

echo "🥔 $SKILL_NAME 설치 중..."

# 기존 설치 확인
if [ -d "$INSTALL_DIR" ]; then
  echo "⚠️  기존 설치 발견. 덮어쓸까요? (y/n)"
  read -r answer
  if [ "$answer" != "y" ]; then
    echo "설치 취소됨."
    exit 0
  fi
  rm -rf "$INSTALL_DIR"
fi

mkdir -p "$INSTALL_DIR/references"

# 로컬 파일 있으면 복사, 없으면 GitHub에서 다운로드
if [ -f "$SCRIPT_DIR/SKILL.md" ]; then
  cp "$SCRIPT_DIR/SKILL.md" "$INSTALL_DIR/SKILL.md"
  cp "$SCRIPT_DIR/references/preferences.md" "$INSTALL_DIR/references/preferences.md"
else
  echo "📥 GitHub에서 다운로드 중..."
  curl -fsSL "$RAW_BASE/SKILL.md" -o "$INSTALL_DIR/SKILL.md"
  curl -fsSL "$RAW_BASE/references/preferences.md" -o "$INSTALL_DIR/references/preferences.md"
fi

echo ""
echo "✅ 설치 완료! → $INSTALL_DIR"
echo ""
echo "👉 다음 단계: preferences.md를 열어 설정을 채워줘."
echo "   open $INSTALL_DIR/references/preferences.md"
echo ""
echo "🥔 '/gamja' 또는 '오늘 회고'로 시작해봐!"
