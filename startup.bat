start "battery_check" check_battery_plugged.bat

start "datacomx" C:\home\prog\delphi\datacomx\datacomx.bat

timeout /t 1

start "Hugo" C:\home\prog\asofterspace\assSecretary\run.bat
start "Mari" C:\home\prog\asofterspace\assAccountant\run.bat
start "workbench" C:\home\prog\asofterspace\assWorkbench\run.bat
start "Towa" C:\home\prog\asofterspace\assDonkey\run.bat

timeout /t 15

start "firefox" "C:\Program Files\Mozilla Firefox\firefox.exe" http://localhost:3012/

timeout /t 5

start "browser" C:\home\prog\asofterspace\assBrowser\run.bat
start "Zara" C:\home\prog\asofterspace\assTrainer\run.bat
start "Fibo" C:\home\prog\asofterspace\assBusinessFinder\run.bat
start "Fefi" C:\home\prog\asofterspace\assErrorFinder\run.bat