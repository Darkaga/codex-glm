# Codex GLM (Game Library Manager)

A lightweight GUI application for managing and launching DRM-free games from a local network repository. Built in C for Windows with GTK support, Codex GLM provides an intuitive interface for browsing games, retrieving metadata, and managing installations.

---

## 🎯 Features

- Browse and search games from a mapped SMB drive or local folder
- View metadata and cover art (via IGDB API integration)
- Install/uninstall games with progress indicators
- Customizable install, cache, and repository paths
- Caching layer to improve metadata load times
- Modular architecture for easy maintenance and extension

---

## 🛠 Build Instructions

### Prerequisites

- [GTK 4 for Windows](https://www.gtk.org/docs/installations/windows/) (via MSYS2 or manual install)
- `gcc` (MinGW or MSYS2)
- `pkg-config` for GTK flags

### Build

```bash
make
```

### Run

```bash
make run
```

---

## 🧩 Project Structure

```
.
├── include/          # Header files (per module)
├── src/              # Source files (one .c per function)
├── obj/              # Build artifacts
├── bin/              # Final executable output
├── Makefile          # Build script
├── README.md         # Project overview
├── docs/             # Developer module documentation
```

---

## 📦 Modules

- `UI Module` – Window drawing, widgets, event handling
- `Repository Module` – Game listing and repository refresh
- `Metadata Module` – Metadata/artwork fetching and caching
- `Installation Module` – Installer execution, uninstall, cleanup
- `Settings Module` – User config and path persistence
- `Cache Module` – Local image/metadata cache
- `Utility Module` – Logging, file ops, command execution

---

## 🚧 Status

This project is under active development. See `docs/` for developer module guides and design documentation.

Contributions and feedback are welcome!

---

## 📜 License

MIT License

---
