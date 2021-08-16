' This script is meant to be launched from the Windows side, to start up a decorationless
' VcXsrv container for the environment.
' Then after the VcXsrv container is running, it pulls the WSL Ubuntu into it, along with a launch script.

Set shell = CreateObject("WScript.Shell" ) 
shell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" :0 -screen 0 @1 -ac +xinerama -engine 1 -nodecoration -wgl -keyhook -clipboard"
WScript.Sleep 200
shell.Run "ubuntu -c ""cd ~ && ~/scripts/wlaunch""", 0
