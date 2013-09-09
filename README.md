OpenCV 2.4.6の開発環境です。
USBなどで手軽に持ち運べるのが特徴です。
また、開発マシンに既に別のOpenCVライブラリが入っていても、互いに影響がありません。

別途、MinGWとOpenCV 2.4.6(のWindows版ライブラリ)を入手する必要があります。
詳しい使い方や説明はブログ記事(http://blog.michinari-nukazawa.com/2013/09/opencv24-and-mingw-gcc-compile.html )をご参照ください。

OpenCVライブラリ 2.4.6以外のバージョンを使用する場合、makefileの対応箇所(VER=246)を書き換えてください。

文字コードはWindowsで扱いやすいように(多分)Shift-JISになっています。


Linux環境では、単にWindows対応可能なプロジェクトディレクトリです。
(Linux環境ではpkg-configを使用するため、OpenCVライブラリのバージョンを手動で書き換える必要はありません)
