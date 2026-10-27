.vim
====

Vim Profile

Plugins now loaded automatically in pack directory

 1. `git submodule update --init --recursive --remote`
 2. build deps for YouCompleteMe `apt install build-essential python3-dev cmake`
 3. YouCompleteMe requires compilation `cd pack/plugins/start/YouCompleteMe && ./install.py`
 4. vim-ai is preconfigured in `.vimrc` for the home-aida model (OpenAI-compatible server, no API key)
