#  neovim

`scoop install neovim`

# [vim-plug](https://github.com/junegunn/vim-plug)

```PS1
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

then open vim, and `PlugInstall`