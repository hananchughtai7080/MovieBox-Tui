#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "=========================================="
echo "  🎬 MovieBox Mobile Touch Setup (Termux)"
echo "=========================================="
echo ""

# 1. Update and install packages
echo "[1/4] Installing necessary tools..."
pkg update -y
pkg install -y curl tar termux-tools termux-am

# 2. Configure Termux on-screen Touch Control Bar
echo "[2/4] Setting up on-screen Touch Controls (Arrows, Enter, Search, Back)..."
mkdir -p ~/.termux
cat << 'EOF' > ~/.termux/termux.properties
extra-keys = [ \
  ['ESC', 'UP', '/', 'TAB', 'ENTER'], \
  ['LEFT', 'DOWN', 'RIGHT', 'SPACE', 'q'] \
]
EOF
termux-reload-settings

# 3. Setup Android storage permissions
echo "[3/4] Requesting storage permission (tap Allow if prompted)..."
termux-setup-storage

# 4. Install MovieBox-TUI
echo "[4/4] Installing MovieBox-TUI..."
curl -fsSL https://raw.githubusercontent.com/mesamirh/MovieBox-Tui/main/install.sh | bash

# 5. Setup easy alias and premium theme
grep -q "alias mb=" ~/.bashrc 2>/dev/null || echo "alias mb='export MOVIEBOX_THEME=TokyoNight && moviebox-tui'" >> ~/.bashrc
export MOVIEBOX_THEME=TokyoNight

echo ""
echo "=========================================="
echo "  🎉 Setup Complete!"
echo "  To launch MovieBox anytime, just type:"
echo "     mb"
echo "  (Touch buttons are now visible on screen!)"
echo "=========================================="
