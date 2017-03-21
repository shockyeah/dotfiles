# shockyeah's dotfiles

## Usage

### XCode、CLIツールのインストール

* Xcodeをインストールしていない場合は、最新版のXcodeをインストール

* Command Line Tools for Xcodeのインストール

```
$ xcode-select --install
```

### Hombrew、vimインストール

* [Homebrewのサイト](https://brew.sh/index_ja.html)にあるコマンドをコピペで実行

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* Homebrew版vimのインストール

```
$ brew reinstall vim --with-lua --with-override-system-vim
```

* neocompleteプラグインはVimのlua機能によって動作するため、
luaの有効状態を確認

```
$ vim --version | grep lua
+lua
```

* brew doctorの実行

```
$ brew doctor
```

* 定期的にbrew updateを実行する

```
$ brew update
```

### nodebrewのインストール


* [公式のインストール手順](https://github.com/hokaccha/nodebrew)に従って実行

```
$ curl -L git.io/nodebrew | perl - setup
$ export PATH=$HOME/.nodebrew/current/bin:$PATH
$ source ~/.bashrc
```

* nodebrewリモートリポジトリにあるバージョン一覧を確認

```
$ nodebrew ls-remote
```

* インストール

```
$ nodebrew install-binary v0.11.11
```


* インストールされているバージョン一覧を確認

```
$ nodebrew ls
```

* 切り替え

```
$ nodebrew use v0.11.11
```

### dotfilesインストール

```
$ cd
$ git clone https://github.com/shockyeah/dotfiles.git
$ cd dotfiles
$ ./install.sh
```

## Description

* show installed plugins

```
:Unite dein
```
