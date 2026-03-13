#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/edumgt/Java-Basic-005.git"
TARGET_DIR="external/Java-Basic-005"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo "[INFO] Cloning $REPO_URL"
git clone --depth 1 "$REPO_URL" "$TMP_DIR/repo"

echo "[INFO] Replacing $TARGET_DIR"
rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"

rsync -a --delete --exclude '.git' "$TMP_DIR/repo/" "$TARGET_DIR/"

echo "[INFO] Import completed: $TARGET_DIR"
