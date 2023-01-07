# personal_setup
This is for personal setup for Dong. I will covered some environments I am using for development, such as editor, python...


# macOS
Some basic development tools:
Homebrew & iterm2 & node & yarn & git
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install --cask iterm1 && brew install yarn && brew install git
```
## iterm2
```
brew install --cask iterm1
```

## shell
The newest default shell with macOS is zsh. Three files need some attention for configuration, namely `.profile`, `.zprofile`, `.zshrc`. I only deal with `.zprofile`, `.zshrc`.
You should be able to find `.zprofile`, `.zshrc` under `$HOME` (`~/`). For a brand new system, if there are  no these files, you can add them manually.

```
touch ~/.zprofile
touch ~/.zshrc

```
This two files were executed with order as **I personally know** - .zprofile first when you log in your account and .zshrc second when you execute a command in the shell.

My current settings on my personal lapyop for these two files can be found [here](./shell/macOS.md)

## editor - neoVim
### installation
I am switching to using Nvim, so have to install Nvim firstly. The official installation can be found [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x). Personally, I think using homebrew is the most convenient but for some reason, I cannot make it work on my perosnal laptop due to **the lack of Xcode**. Therefore, I manually installed instead and export the environment as shown in this [page](shell/macOS.md).

To make sure you have it installed successfully, use
```
nvim --version
```

### plugin
I am currently using Vim-plug for plugin management and lua configuration. 
Firstly, install Vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then **copy** the whole folders [`nvim`](./nvim_related/nvim) to `~/.config`. So after copying, you should have `~/.config/coc` and `~/.config/nvim`. 
- `nvim/init.vim` contains all the plugin information in `init.vim`  
- `nvim/lua` lua configurations.  
- `nvim/coc-settings.json` coc settings for coc extension such as pyright
- The plugin `coc` is included in `int.vim`. You can use coc command to install its extension to make it support the language you are using, such as json, python. Once you install these extensions, a folder `coc/*` will be created.


Here I listed some useful coc extensions with its VIM commands.
```
:CocInstall coc-pyright
:CocInstall coc-json
:CocInstall coc-yaml

# some of these are unfamilar. Refer to help to find out more
:CocList extensions
:CocRestart
:CocConfig
:CocCommand
```

Use `:PlugInstall` to install all plugins.

### important for my personal settings
In my `nvim/coc-settings.json`, **black** is used for formatting and refed so you need to point to the correct location of black.
The same thing happens to **python**, which will be used for running black. Python location was specified in `nvim/lua/others.lua`. To let nvim to execute python. You need to **pynvim**, which is the python client. 
Personally, it is suggested to create a specific python env **just for nvim** and include all the packages used by nvim, such as black. Such virtual env can be created like [this section](#personal_nvim).   


# python
## conda
``` sh
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```
After this, check if conda is installed correctly
```
conda --version
```

To disable auto base environment activate:
```
conda config --set auto_activate_base false
```

## <a name="personal_nvim"></a>env for my personal NVIM
if you are copying my `nvim` settings and configurations, you can use the following virtual env directly.
```
conda create -n nvim python=3.9
conda activate nvim
pip install balck
pip install pynvim
```
















