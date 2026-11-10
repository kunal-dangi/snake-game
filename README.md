# Snake

Classic snake game made with Python's turtle module. Eat food, grow longer, don't hit the walls or your tail. High score is saved between runs.

Built with Python while learning (part of my [PythonProject](https://github.com/kunal-dangi/PythonProject) 100-days journey).

**Controls:** arrow keys.

## Download (macOS)

Grab the **.dmg** from the [latest release](https://github.com/kunal-dangi/snake-game/releases/latest), open it, and drag **Snake** into Applications.

The app isn't notarized by Apple, so the first launch will be blocked. Either right-click the app → **Open**, or run:

```bash
xattr -cr "/Applications/Snake.app"
```

Built for Apple Silicon (arm64) Macs.

## Run from source

```bash
pip install -r requirements.txt
python3 main.py
```

## Build the DMG yourself

```bash
pip install pyinstaller -r requirements.txt
./build.sh
```
