#!/usr/bin/env sh
set -eu

SRC_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
DEST_DIR="${1:-$HOME/wechat-article-themes}"

mkdir -p "$DEST_DIR"
rm -rf "$DEST_DIR/themes" "$DEST_DIR/previews" "$DEST_DIR/examples" "$DEST_DIR/demo" "$DEST_DIR/prompts" "$DEST_DIR/scripts"

cp -R "$SRC_DIR/themes" "$DEST_DIR/themes"
cp -R "$SRC_DIR/previews" "$DEST_DIR/previews"
cp -R "$SRC_DIR/examples" "$DEST_DIR/examples"
cp -R "$SRC_DIR/demo" "$DEST_DIR/demo"
cp -R "$SRC_DIR/prompts" "$DEST_DIR/prompts"
cp -R "$SRC_DIR/scripts" "$DEST_DIR/scripts"
cp "$SRC_DIR/README.md" "$DEST_DIR/README.md"
cp "$SRC_DIR/START_HERE.md" "$DEST_DIR/START_HERE.md"
cp "$SRC_DIR/QUICKSTART.md" "$DEST_DIR/QUICKSTART.md"
cp "$SRC_DIR/AGENTS.md" "$DEST_DIR/AGENTS.md"

cat <<EOF
微信公众号排版主题已安装到：
  $DEST_DIR

新手推荐主题：
  $DEST_DIR/themes/paper-garden.css

更温润的纸本手札主题：
  $DEST_DIR/themes/paper-whisper.css

钻石闪光主题：
  $DEST_DIR/themes/diamond-glint.css

第一次使用请看：
  $DEST_DIR/START_HERE.md

把这段提示词发给 Codex / Claude / Cursor：
  $DEST_DIR/prompts/agent-install.txt

打开本地预览：
  $DEST_DIR/demo/index.html

下一步：
  复制 themes/ 里的一个 CSS 文件，粘贴到公众号 Markdown 编辑器的自定义 CSS 区域。
EOF
