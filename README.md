#dotfiles
## Install

* neocompleteプラグインはVimのlua機能によって動作するため、
luaの有効状態を確認

```
$ vim --version | grep lua
-lua
```
 * ``-lua`` となっていた場合は以下を実行

```
$ brew install lua
$ brew reinstall vim --with-lua
$ vim --version | grep lua
+lua
```

 * 既にvimインストール済みの場合は、再インストール

```
$ brew reinstall vim --with-lua --with-override-system-vim
```

## Usage

```

```

## Description

* show installed plugins

```
:Unite dein
```
