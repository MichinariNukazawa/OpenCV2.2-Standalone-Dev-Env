
:: GCCがヘッダファイルを探索するための環境変数設定
:: &ヘッダファイルのインクルードパス
set C_INCLUDE_PATH=opencv\build\include\opencv;%C_INCLUDE_PATH%
:: opencv2へのパス追加
set C_INCLUDE_PATH=opencv\build\include;%C_INCLUDE_PATH%
:: C++対応(未確認)
set CPULS_INCLUDE_PATH=%C_INCLUDE_PATH%;%CPULS_INCLUDE_PATH%


::GCCが静的ライブラリを探索するための環境変数&パス指定
set LIBRARY_PATH=opencv\build\x86\mingw\lib;%LIBRARY_PATH%

::GCCが動的ライブラリを探索するための環境変数&パス指定
set PATH=opencv\build\x86\mingw\bin;%PATH%


::MinGW(gcc, make)を使用するための環境変数&パス指定
set PATH=MinGW\bin;%PATH%


:: "エイリアスの追加(make runできるようになる。)"
doskey make = mingw32-make $*
doskey rm = del $*


cmd.exe
