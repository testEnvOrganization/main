@echo off
chcp 65001

set FNAME=%0
set LANG=%~1

rem このバッチが存在するフォルダをカレントにする
cd /d %~dp0

rem ◆後処理◆
rem 生成に使ったファイル全削除
del html\%LANG%\*.adoc
rem ◆後処理ここまで◆

echo 変換処理が完了しました。
pause
exit /b

