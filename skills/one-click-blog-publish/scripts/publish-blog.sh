#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
YES=false
if [[ "${1:-}" == "--yes" ]]; then YES=true; shift; fi
MESSAGE="${1:-更新博客}"
if [[ -z "$(git status --porcelain)" ]]; then echo "没有需要发布的改动。"; exit 0; fi
if command -v hugo >/dev/null 2>&1 && [[ -d themes/PaperMod ]]; then
  echo "正在验证 Hugo 构建..."
  hugo --gc --minify --quiet
else
  echo "本地 Hugo 或 PaperMod 主题不可用，跳过构建验证；GitHub Actions 将在推送后构建。"
fi
git status --short
if [[ "$YES" != true ]]; then
  read -r -p "提交并推送以上改动？[y/N] " answer
  [[ "$answer" =~ ^[Yy]$ ]] || { echo "已取消。"; exit 1; }
fi
git add -A
git commit -m "$MESSAGE"
git push
