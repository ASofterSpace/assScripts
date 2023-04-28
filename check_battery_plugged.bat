:loop

  REM get the current battery status
  wmic path Win32_Battery get BatteryStatus | find "1" >nul 2>&1

  REM check if on battery, and if so, raise a warning to the user
  if "%errorlevel%" == "0" (
	start cmd /c "@echo off && echo. && echo. && echo ATTENTION +++ ATTENTION +++ ATTENTION && echo. && echo POWER DISCONNECTED && echo. && echo ATTENTION +++ ATTENTION +++ ATTENTION && echo. && echo. && pause"
  )

  REM wait two seconds
  ping -n 3 127.0.0.1 >nul 2>&1

goto loop
