# Dotfiles Repository Managed with GNU Stow

This repository contains my personal configuration files (**dotfiles**) for various tools and applications, organized and managed using **GNU Stow**. It allows me to easily manage, version, and deploy configurations across multiple systems.

---

## 🚀 Features

- **Centralized management:** All configuration files are stored in a single repository.
- **Portability:** Easily deploy configurations on any system.
- **Simplicity:** Uses symbolic links to keep configurations organized and non-intrusive.
- **Reversibility:** Easily remove or update configurations without affecting the system.
:
---

## 📂 Repository Structure

The repository is organized into directories, each representing a "package" managed by [GNU Stow](https://www.gnu.org/software/stow/) For example:

```
dotfiles/
├── bash/             # Bash configuration files
│   └── .bashrc
├── pacman_hooks/     # Hooks for pacman
│   ├── etc/
│   │   └── pacman.d/
│   │       └── hooks/
│   │           ├── my_hook1.hook
│   │           └── my_hook2.hook
├── nvim/              # Neovim configuration
│   └── .config
|		└── nvim
|			└── init.vim 
|
└── README.md         # This file
```

Each directory corresponds to a set of configuration files or a specific tool. When you use **GNU Stow**, it creates symbolic links for the files in their respective system locations.

---

## 🛠️ Requirements

- **GNU Stow:** A symlink manager used to deploy configurations.
  
  Install it using your package manager:
  - Arch Linux:
    ```bash
    sudo pacman -S stow
    ```
  - Debian/Ubuntu:
    ```bash
    sudo apt install stow
    ```
  - macOS:
    ```bash
    brew install stow
    ```

---

## 🔧 Usage

### Clone the Repository

First, clone this repository into your home directory or any preferred location:
```bash
git clone https://github.com/Matheus-Mota1/Dotfiles
cd ~/DOtfiles
```

### Deploy Configurations

Use **GNU Stow** to create symbolic links for the desired configuration package(s). Basically recreating the structure inside the files. From a destiny point that could be your home (default) or any other point set with `-t` option.

For example:

1. To deploy the Bash configuration:
```bash
stow -t ~ bash
```

This creates a `symlink` for `.bashrc` in your home directory.

2. To deploy `pacman` hooks (requires root permissions):
```bash
sudo stow -t / pacman_hooks
```

This creates a `symlink` for `pacman` hooks into the `/`
### Remove Configurations

To remove symbolic links for a specific package:
```bash
stow -D -t ~ bash
```

For system-wide configurations (like `pacman_hooks`):
```bash
sudo stow -D -t / pacman_hooks
```

---

## 📝 Notes

- Before deploying configurations, ensure that existing files or configurations in the target location are backed up to avoid overwriting.
- Use the `--simulate` option to preview actions before applying them:

  ```bash
  stow --simulate -t ~ bash
  ```

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and share these configurations.

---

## 🤝 Contributing

Feel free to submit issues or pull requests to improve this repository. Any feedback or suggestions are welcome! I would love !!!  

