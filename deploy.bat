@echo off

REM Output pak filename.
set pak_filename=my_level

REM Point this to your Unreal Engine installation. (You probably don't have to modify this.)
set run_uat=C:\Program Files\Epic Games\UE_5.1\Engine\Build\BatchFiles\RunUAT.bat

REM Point this to your Pseudoregalia installation. (You probably don't have to modify this.)
set pseudoregalia_folder=C:\Program Files (x86)\Steam\steamapps\common\Pseudoregalia

if not exist "%run_uat%" (
  echo Error: script variable 'run_uat' is set to "%run_uat%" which does not exist. Please install Unreal Engine 5.1 and ensure this script is using a valid path to RunUAT.bat.
  pause
  exit /b 1
)

if not exist "%pseudoregalia_folder%" (
  echo Error: script variable 'pseudoregalia_folder' is set to "%pseudoregalia_folder%" which does not exist. Please install Pseudoregalia and ensure this script is using a valid path to its root folder.
  pause
  exit /b 1
)

REM Cook and pak.
call "%run_uat%" BuildCookRun -project="%~dp0\pseudoregalia.uproject" -platform=Win64 -cook -stage -pak

echo Copying pakchunk1-Windows.pak to Pseudoregalia folder, renamed as %pak_filename%_p.pak
copy "%~dp0\Saved\StagedBuilds\Windows\pseudoregalia\Content\Paks\pakchunk1-Windows.pak" "%pseudoregalia_folder%\pseudoregalia\Content\Paks\%pak_filename%_p.pak"

echo Done!

echo Running the game...
"%pseudoregalia_folder%\pseudoregalia\Binaries\Win64\pseudoregalia-Win64-Shipping.exe"
