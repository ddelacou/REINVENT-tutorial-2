#!/usr/bin/env bash
# Build REINVENT4 documentation with Sphinx
# Run from the repo root: bash build_docs.sh

set -e

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="$REPO_ROOT/docs/_build/html"

echo "==> Installing doc dependencies..."
pip install -r "$REPO_ROOT/docs/requirements.txt"

echo "==> Building HTML..."
sphinx-build -b html "$REPO_ROOT/docs" "$BUILD_DIR"

echo ""
echo "Done. Open: $BUILD_DIR/index.html"
