@echo off
color 0a
title Main Exile Monitor
:Serverstart
::C:\tools\BEC\bec.bat
timeout 3
cd "D:\Steam\steamapps\common\Exile"
echo Exile Server Monitor... Active !
start "Arma3" /min /wait arma3server_x64.exe -mod=@exile;@CBA_A3;@CUPTerrains;@CUPTerrainsCWA;@CUPTerrainsMaps;@Abramia;@FIRAWS;@AV8;@F14;@F15;@F16;@F18;@NIArms;@PookARTY;@POOKCamonets;@Sab;@SFP;@RHSAFRF;@RHSGREF;@RHSSAF;@RHSUSAF;@Hellenic;@Hellenicsub;@JSRS;@Blastcore; -servermod=@exileserver;@Towing;@Rappelling;@Achilles; -config=D:\Steam\steamapps\common\Exile\@ExileServer\config.cfg -port=2302 -profiles=Exile -cfg=D:\Steam\steamapps\common\Exile\@ExileServer\basic.cfg -name=Exile -autoinit -loadMissionToMemory -bandwidthAlg=2
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Shutdown ... Restarting!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart