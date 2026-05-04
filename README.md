# dotfiles

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

### GitHub Codespaces

These dotfiles are configured to work seamlessly with GitHub Codespaces. The `install.sh` script will automatically configure the environment, install Oh My Zsh, and link the configurations.

### Manual Installation

Install: `brew install stow` (or `apt-get install stow` on Linux)

Run:

```bash
git clone git@github.com:conortm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
chsh -s $(which zsh)
```

## AI Tools

These dotfiles include aliases for working with AI agents in your terminal:

*   **GitHub Copilot CLI:** Provides `??` (shell), `git?`, `gh?`, and `wtf` (explain) for fast command assistance.
*   **Gemini CLI:** Provides the `ask` alias if the Gemini CLI is installed.

Inspired by [ericduran/dotfiles](https://github.com/ericduran/dotfiles) and [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).
