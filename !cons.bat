::
::このファイルと同じディレクトリ内にOpenCV2.2およびMinGWが存在しない場合、
::c:\直下(デフォルトインストール先)にあるファイルを使用する。
::


:: GCCがヘッダファイルを探索するための環境変数設定
:: &ヘッダファイルのインクルードパス
set C_INCLUDE_PATH=OpenCV2.2\include\opencv;c:\OpenCV2.2\include\opencv;%C_INCLUDE_PATH%
:: opencv2へのパス追加
set C_INCLUDE_PATH=OpenCV2.2\include;c:\OpenCV2.2\include;%C_INCLUDE_PATH%
:: C++対応(未確認)
set CPULS_INCLUDE_PATH=%C_INCLUDE_PATH%;%CPULS_INCLUDE_PATH%


::GCCが静的ライブラリを探索するための環境変数&パス指定
set LIBRARY_PATH=OpenCV2.2\lib;c:\OpenCV2.2\lib;%LIBRARY_PATH%

::GCCが動的ライブラリを探索するための環境変数&パス指定
set PATH=OpenCV2.2\bin;c:\OpenCV2.2\bin;%PATH%


::MinGW(gcc, make)を使用するための環境変数&パス指定
set PATH=MinGW\bin;c:\MinGW\bin;%PATH%


:: "エイリアスの追加(make runできるようになる。)"
doskey make = mingw32-make $*
doskey rm = del $*


cmd.exe
