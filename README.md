# robosys2023 ros2
[![test](https://github.com/kishinmikami/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/kishinmikami/mypkg/actions/workflows/test.yml)

## コマンドの詳細
* talker

	開始されてから何秒経過したかを計測し, 出力するパブリッシャーのノードです.

* listener

	パブリッシャーから出力された数字を何時何分何秒という表記に変換し, 標準出力するサブスクライバーのノードです.

* トピック

	talkerが開始されてから経過した秒数の数字です.

## 使用方法
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
以下のコマンドでワークスペースに移動し, ビルドしてください.
```
$ cd ~/(ご自身のros2のディレクトリ名)
$ colcon build
$ source ~/.bashrc
```

## 実行方法
* 端末１
```
$ cd ~/(ご自身のros2のディレクトリ名)
$ ros2 run mypkg talker 
```

* 端末２
```
$ cd ~/(ご自身のros2のディレクトリ名)
$ ros2 run mypkg listener
```
## 実行結果
端末2
```
[INFO] [listener]: Listen: 0 h 59 m 54 s
[INFO] [listener]: Listen: 0 h 59 m 55 s
[INFO] [listener]: Listen: 0 h 59 m 56 s
[INFO] [listener]: Listen: 0 h 59 m 57 s
[INFO] [listener]: Listen: 0 h 59 m 58 s
[INFO] [listener]: Listen: 0 h 59 m 59 s
[INFO] [listener]: Listen: 1 h 0 m 0 s
[INFO] [listener]: Listen: 1 h 0 m 1 s
[INFO] [listener]: Listen: 1 h 0 m 2 s
[INFO] [listener]: Listen: 1 h 0 m 3 s
[INFO] [listener]: Listen: 1 h 0 m 4 s
```

端末1に何も表示されないのは正常な動作です.

## 必要なソフトウェア
* Python
	* テスト済:ver.3.7～3.10
* ros2

## テスト環境
* Ubuntu 22.04.2 LTS
* 1時間以上が正常に表示されるかのテストは, 時間の進む速度を疑似的に100倍にしてテストしています. 

## ライセンス関連

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを一部加筆し、本人の許可を得て自身の著作としたものです.
	* [ryuichiueda/my-slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

© 2023 Kishin Mikami
