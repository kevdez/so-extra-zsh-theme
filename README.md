# so-extra theme for zsh

Yet another theme for your `~/.oh-my-zsh/themes/` folder


It's got:
- username
- time
- current Node version (works with nvm)
- current directory path
- git branch name with dirty/clean markers: `✗ ✓`
- Git status markers on the rightmost side of the console: `✹ ✚ ✖` 

```
┌─[ kevdez @ 11:11AM ]─[ ⬡ 6.11.1 ]─[ ~/git/so-extra-zsh-theme ]─[ master ✓ ]
└─❯❯❯ echo "hello world"
```

How to download:

1. Place the `so-extra.zsh-theme` in `~/.oh-my-zsh/themes/`:
```
git clone https://github.com/kevdez/so-extra-zsh-theme.git so-extra && \
cd $_ && \
mv so-extra.zsh-theme ~/.oh-my-zsh/themes/ && \
cd .. && \
rm -rf so-extra
```

2. Open `.zshrc` file and set the property `ZSH_THEME` to `ZSH_THEME="so-extra"`. Save and close.
