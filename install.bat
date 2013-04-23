@echo off
set home=%USERPROFILE%
set localrc=%cd%\local\vimrc
set vimrc=%home%\_vimrc
set vim=%home%\vimfiles

if exist "%vimrc%" (
  echo vimrc already exists
) else (
  mklink %vimrc% %localrc%
)

if exist %vim% (
  echo vimfiles already exist
) else (
 mklink /D %vim% %cd%
)

:END
