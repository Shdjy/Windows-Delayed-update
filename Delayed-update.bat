@echo off
chcp 65001 >nul
:: 以管理员身份运行
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 请右键以管理员身份运行此脚本！
    pause
    exit /b
)

:: 修改注册表
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v FlightSettingsMaxPauseDays /t REG_DWORD /d 3650 /f

echo 已成功将暂停更新天数设置为 3650 天
pause
