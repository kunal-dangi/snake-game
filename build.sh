#!/bin/sh
# Builds dist/Snake.dmg. Needs: pip install pyinstaller -r requirements.txt
set -e
cd "$(dirname "$0")"
NAME="Snake"
pyinstaller --noconfirm --windowed --name "$NAME" --osx-bundle-identifier "io.github.kunal-dangi.snake-game" main.py
mkdir -p build/dmg && ln -sfh /Applications build/dmg/Applications
ditto "dist/$NAME.app" "build/dmg/$NAME.app"
hdiutil create -volname "$NAME" -srcfolder build/dmg -ov -format UDZO "dist/$NAME.dmg"
