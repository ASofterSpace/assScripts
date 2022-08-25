@echo off

setlocal EnableDelayedExpansion

for %%F in ("*.jpg") do (

	:retry
	set NEWNAME="!RANDOM!-!RANDOM!.jpg"

	if exist "!NEWNAME!" (
		goto :retry
	)

	rename "%%~F" "!NEWNAME!"
)

endlocal
