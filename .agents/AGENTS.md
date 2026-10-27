# .vim — Personal Vim Config

## Repo type

Personal dotfiles repo. No tests, no build, no CI. The only executable source of truth is `.vimrc`.

## Setup

```
git submodule update --recursive --remote
apt install flake8 pip3 cmake aspell        # system deps
pip3 install --user pipenv poetry            # user python packages
cd pack/plugins/start/YouCompleteMe && python3 install.sh  # YCM requires compilation
```

## Structure

- `.vimrc` — all configuration. This is the primary file.
- `pack/plugins/start/` — plugins loaded via Vim native pack directory. Each entry is a git submodule (see `.gitmodules`). `jedi-vim` was removed (superseded by YCM).
- `pack/github/start/copilot.vim/` — GitHub Copilot plugin (submodule, NOT in `.gitmodules`, managed manually).
- `compiler/pylint.vim` — custom pylint compiler for Python buffers.

## Updating plugins

```
git submodule update --recursive --remote
```

Fetches the latest commit from each submodule's upstream branch. Note: `copilot.vim` is excluded from the recursive update (not in `.gitmodules`).

## Key conventions

- 4-space indent, expandtab, tabstop=4 (from `.vimrc`)
- UK English spell checking (`en_GB`) via aspell
- ALE is the active linter (Syntastic reference in statusline is legacy dead code)
- `.netrwhist` is tracked (Vim session state, not a source file)
