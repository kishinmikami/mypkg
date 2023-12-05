# robosys2023 ros2
[![test](https://github.com/kishinmikami/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/kishinmikami/mypkg/actions/workflows/test.yml)

## コマンドの詳細

## インストール方法
ros2, githubがインストールされている環境で行ってください.

ご自身のros2のワークスペースに以下のコマンドで移動してください.
```
$ cd (ご自身のros2のワークスペースのディレクトリ名)
```
次に以下のコマンドを入力して, ディレクトリを移動してください.
```
$ cd src
```
次に以下のコマンドを入力して, github上にあるこのリポジトリを手元にダウンロードしてください.
```
$ git clone https://github.com/kishinmikami/mypkg.git
```
以下のコマンドを入力してファイルが適切にダウンロードされていることを確認してください.
```
$ ls
```
## 使い方
* 端末１
```
$ ros2 run mypkg talker 
```

* 端末２
```
$ ros2 run mypkg listener
```
## 必要なソフトウェア
* Python
	* テスト済:ver.3.7～3.10
* ros2

## テスト環境
* Ubuntu 22.04.2 LTS

## ライセンス関連

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを本人の許可を得て自身の著作としたものです.
	* [ryuichiueda/my-slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

© 2023 Kishin Mikami
