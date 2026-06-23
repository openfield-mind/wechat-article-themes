#!/usr/bin/env sh
set -eu

SRC_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
DEST_DIR="${1:-$HOME/wechat-article-themes}"

mkdir -p "$DEST_DIR"
rm -rf "$DEST_DIR/themes" "$DEST_DIR/previews" "$DEST_DIR/examples" "$DEST_DIR/demo"

cp -R "$SRC_DIR/themes" "$DEST_DIR/themes"
cp -R "$SRC_DIR/previews" "$DEST_DIR/previews"
cp -R "$SRC_DIR/examples" "$DEST_DIR/examples"
cp -R "$SRC_DIR/demo" "$DEST_DIR/demo"
cp "$SRC_DIR/README.md" "$DEST_DIR/README.md"
cp "$SRC_DIR/QUICKSTART.md" "$DEST_DIR/QUICKSTART.md"
cp "$SRC_DIR/AGENTS.md" "$DEST_DIR/AGENTS.md"

cat <<EOF
Installed WeChat Article Themes to:
  $DEST_DIR

Recommended beginner theme:
  $DEST_DIR/themes/paper-garden.css

Open local demo:
  $DEST_DIR/demo/index.html

Next step:
  Copy one CSS file from themes/ into your Markdown editor's custom CSS area.
EOF
