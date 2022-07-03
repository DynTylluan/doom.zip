echo off
cls
echo.
echo.
if exist fistful.wad goto load
echo.
echo.
echo     FISTFUL.WAD is missing!
echo.
echo     abandoning installation.
echo.
echo.
echo.
goto exit
:load
if exist doom2.wad goto ok
echo.
echo.
echo     You must install FISTFUL.WAD from your DOOM2 directory.
echo.
echo.    ... cannot find DOOM2.WAD
echo.
echo     abandoning installation.
echo.
echo.
echo.
goto exit
:ok
if exist deusf.exe goto ok2
echo.
echo.
echo      You must have a copy of DEUSF.EXE to install a sprite patch.
echo.
echo      ... you should have got a copy with this wad.
echo.
echo      abandoning installation.
echo.
echo.
echo.
goto exit
:ok2
col black on black
deusf -restore >fistfl 
deusf -restore >fistfl
pcxview cowboys.pcx
deusf -merge fistful.wad >fistfl
mode co80
cls
echo.
echo.
echo.
echo    Installation of "A Fistful of Doom" complete.
echo.
echo    If you should exit Doom unexpectedly type RESTORE to restore the
echo    original Doom2 graphics.  If you exit normally, Fistful will
echo    will clear itself.
echo.
echo    READY TO DEATHMATCH...  
echo    All players must select identical settings from the DM menu.
echo.
echo    DO NOT ADD FISTFUL.WAD to the external PWAD list - it is already
echo    installed.  However you should make sure that any Patches for 
echo    Fistful downloaded from DETHSET such as Fistfix or extra level 
echo    patches are added to the list.  Hit F3 to edit the PWAD list.
echo.
echo    This Patch was brought to you by DETHSET@patrol.i-way.co.uk
echo.
pause
echo.
dm -file fistfix.wad
deusf -restore
goto exit
:exit

