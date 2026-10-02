<div align="center">

# 🎬 MovieBox-TUI

**Stream & download Movies, TV Series, Anime, and Live TV directly inside your terminal.**  
*Optimized for PC (Windows/Linux/macOS) and Mobile (Android Termux) with 1-Click Launchers.*

[ English ](README.md) • [ বাংলা ](README_BN.md) • [ हिन्दी ](README_HI.md) • [ Español ](README_ES.md)

[![License: MIT/Apache-2.0](https://img.shields.io/badge/License-MIT%2FApache--2.0-blue.svg?style=for-the-badge)](#license)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS%20%7C%20Android-success?style=for-the-badge&logo=android&logoColor=white)](#installation)
[![UI Theme](https://img.shields.io/badge/Theme-TokyoNight%20%2F%20Mocha-purple?style=for-the-badge&logo=visualstudiocode)](#themes)
[![Player](https://img.shields.io/badge/Player-VLC%20%7C%20MPV%20%7C%20IINA-orange?style=for-the-badge&logo=vlc)](#prerequisites)

---

</div>

## 🌟 Highlights

- ⚡ **1-Click PC Launcher:** Instant launch via `run.bat` with auto VLC detection and TokyoNight theme.
- 📱 **Mobile Touch Controls:** Customized Termux setup with on-screen directional touch pad (`mobile_setup.sh`).
- 🎬 **Multi-Source Streaming:** Movies, TV series, anime, Asian dramas, and community Stremio addons.
- 📺 **Live TV & IPTV:** M3U playlist integration with categorized channels and search.
- 🎯 **Quality Selector:** Choose stream resolution (`4K`, `1080p`, `720p`, `480p`, `Auto`) on the fly.
- 🎧 **External Player Forwarding:** Direct playback in `VLC`, `MPV`, `IINA`, or Android Players with stream proxying.
- 📥 **Batch Downloader:** Multi-segment HTTP range downloader with pause and resume.
- 💬 **Multi-Language Subtitles:** Live subtitle fetching and interactive track selection.
- 🔒 **100% Private:** Zero telemetry, no sign-in required, local history and favorites.

---

## 🚀 Quick Start (PC & Mobile)

### 💻 Windows (Instant 1-Click Launch)

Simply double-click **`run.bat`** (or **`start.bat`**) in the project folder or on your Desktop:
```cmd
run.bat
```
> *Automatically configures UTF-8, window layout, VLC media player, and TokyoNight styling.*

---

### 📱 Android (Termux 1-Command Setup)

Open **Termux** on your phone and run this single command:
```bash
pkg update -y && pkg install -y curl tar termux-tools termux-am && mkdir -p ~/.termux && echo "extra-keys = [['ESC','UP','/','TAB','ENTER'],['LEFT','DOWN','RIGHT','SPACE','q']]" > ~/.termux/termux.properties && termux-reload-settings && curl -fsSL https://raw.githubusercontent.com/mesamirh/MovieBox-Tui/main/install.sh | bash && echo "alias mb='export MOVIEBOX_THEME=TokyoNight && moviebox-tui'" >> ~/.bashrc && termux-setup-storage
```

After installation, just type **`mb`** to launch MovieBox anytime with on-screen touch buttons!

---

## 🎮 Easy Controls

| Action | PC (Keyboard & Mouse) | Mobile (Termux Touch Bar) |
| :--- | :--- | :--- |
| **Navigate** | `↑` `↓` `←` `→` Arrow Keys | `[ ▲ ]` `[ ▼ ]` `[ ◄ ]` `[ ► ]` |
| **Select / Play** | `Enter` or **Mouse Click** | `[ ENTER ]` or Screen Tap |
| **Search** | `/` (Slash) | `[ / ]` Touch Button |
| **Back / Cancel** | `Esc` | `[ ESC ]` Touch Button |
| **Switch Tabs** | `Tab` / `Shift+Tab` | `[ TAB ]` Touch Button |
| **Settings** | `/settings` | `/settings` |
| **Quit App** | `q` | `[ q ]` Touch Button |

---

## 📦 Standard Installation

### 🍎 macOS & Linux
```bash
# Direct install script
curl -fsSL https://raw.githubusercontent.com/mesamirh/MovieBox-Tui/main/install.sh | bash
```

Or via [Homebrew](https://brew.sh/):
```bash
brew tap mesamirh/moviebox-tui https://github.com/mesamirh/MovieBox-Tui
brew install moviebox-tui
```

### 🪟 Windows (Direct PowerShell)
```powershell
irm https://raw.githubusercontent.com/mesamirh/MovieBox-Tui/main/install.ps1 | iex
```

Or via [Scoop](https://scoop.sh/):
```powershell
scoop bucket add moviebox https://github.com/mesamirh/MovieBox-Tui
scoop install moviebox-tui
```

<details>
<summary><b>🛠️ Cargo / Build From Source</b></summary>

```bash
git clone https://github.com/hananchughtai7080/MovieBox-Tui.git
cd MovieBox-Tui
cargo build --release --locked
```
</details>

---

## 🎨 Themes

MovieBox-TUI comes with 9 modern built-in color schemes:

- **TokyoNight** *(Default in run.bat)*
- **Mocha** (Catppuccin)
- **Dracula**
- **Nord**
- **RosePine**
- **Gruvbox**
- **Macchiato** / **Frappe** / **Latte**

Change theme anytime via environment variable:
```bash
set MOVIEBOX_THEME=TokyoNight   # Windows CMD
export MOVIEBOX_THEME=TokyoNight # Linux/macOS/Termux
```
Or open the in-app command palette: `/settings` → **Appearance**.

---

## 📚 Documentation

Detailed guides available in the [`docs/`](docs/) directory:

- [🎮 Keyboard & Controls Guide](docs/controls.md)
- [⚙️ Configuration & Themes](docs/config.md)
- [📡 Content Providers & Scrapers](docs/providers.md)
- [🧩 Stremio Community Addons](docs/addons-mode.md)
- [📺 Live TV & IPTV Guide](docs/tv-mode.md)
- [🎬 Media Players Setup (VLC, MPV, IINA)](docs/players.md)
- [📥 Batch Downloads](docs/downloads.md)

---

## 🛡️ Privacy & Security

- **Zero Telemetry:** No user data collection, metrics, or remote tracking.
- **Local Storage:** Watch history, bookmarks, and configs reside solely on your device.
- **Open Source:** Fully inspectable codebase.

---

## 📄 License & Disclaimer

- **License:** Dual-licensed under [MIT](LICENSE-MIT) or [Apache-2.0](LICENSE-APACHE).
- **Disclaimer:** MovieBox-TUI does not host, scrape, or store copyrighted media files. It functions strictly as an open-source terminal interface for publicly accessible web feeds and playlists.
