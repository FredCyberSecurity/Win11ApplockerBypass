2025 Applocker Bypass List On Windows 11



## Winget(On any windows installation)

You can use Winget to bypass Applocker.
Simply use the winget command to download and install whatever application you want from the winget repo:

1. Open cmd
2.  winget install  9P7KNL5RWT25 (This is sysinternals)
3. Open folder: C:\Program Files\WindowsApps\Microsoft.SysinternalsSuite_2024.12.0.0_x64__8wekyb3d8bbwe\tools\

The install folder for Winget applicatin is under "C:\Program Files\WindowsApps\****
And the default rule of applocker allows programs to be run from "C:\Program Files\"

Video Poc: https://www.youtube.com/watch?v=zuL7x4Wltto

## C:\Windows\CCM\Temp\ (On SCCM - Config manager managed devices)

On config manager managed devices there is a folder: C:\Windows\CCM\Temp\ - Where the INTERACTIVE user group has read,execute and wrtie permission.

Simply 

1. Put your executable in this folder
2. Make sure to change the permission on this executable so you have execute permissions
3. Execute your executable

Applocker allows execution from files under C:\Windows\ - And that's why this will work.

NB: Only works when the client is SCCM managed.


