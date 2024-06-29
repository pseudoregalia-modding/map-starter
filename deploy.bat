@echo off

REM Output pak filename.
set pak_filename=my_level_p

REM Set this to be the folder containing the .uproject file.
set uproject_folder=C:\Users\A\Documents\Unreal Projects\map-starter

REM Point this to your Unreal Engine installation. (You probably don't have to modify this.)
set run_uat=C:\Program Files\Epic Games\UE_5.1\Engine\Build\BatchFiles\RunUAT.bat

REM Point this to your Pseudoregalia installation. (You probably don't have to modify this.)
set pseudoregalia_folder=C:\Program Files (x86)\Steam\steamapps\common\Pseudoregalia

REM Cook and pak.
call "%run_uat%" BuildCookRun -project="%uproject_folder%\pseudoregalia.uproject" -platform=Win64 -cook -stage -pak

echo Copying pakchunk1-Windows.pak to Pseudoregalia folder, renamed as %pak_filename%.pak
copy "%uproject_folder%\Saved\StagedBuilds\Windows\pseudoregalia\Content\Paks\pakchunk1-Windows.pak" "%pseudoregalia_folder%\pseudoregalia\Content\Paks\%pak_filename%.pak"

echo Done!
pause
