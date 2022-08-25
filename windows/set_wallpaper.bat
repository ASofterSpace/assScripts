rem The picture must be a bitmap
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\home\pic.bmp /f

rundll32.exe user32.dll,UpdatePerUserSystemParameters
