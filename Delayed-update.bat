@echo off
:: 以管理员身份运行
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 请右键以管理员身份运行此脚本！
    pause
    exit /b
)

:: 修改注册表
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v FlightSettingsMaxPauseDays /t REG_DWORD /d 3650 /f

echo The number of days for suspension of updates has been successfully set to 3650 days.
pause
