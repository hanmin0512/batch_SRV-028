@echo on

cls

setlocal

PUSHD %~DP0

TITLE SRV-028

echo. SRV-028 START
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo [SRV-028] "원격 터미널 접속 타임아웃 설정"                                                              >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo [_START_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo # 기준 : 원격 터미널을 사용하지 않거나, 사용 시 Session Timeout이 설정되어 있는 경우 양호     >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo # 현황                                                                                      >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo # 1.서비스 확인(Remote Desktop Service / Terminal Services)                                            >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
net start |find /I "Remote Desktop Services"                                               >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
net start |find /I "Terminal Services"                                                            >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo # 2-1.레지스트리 확인(Remote Desktop Service_MaxIdleTime)                                                                >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /s |find /I "MaxIdleTime" |find /v "fInheritMaxIdleTime"  >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul 2>&1
:: 30분이 적절 (세션 시간 제한) (MaxIdleTime 설정 확인 방법: 60000=1분, 300000=5분) 
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo # 2-2.레지스트리 확인(Terminal Services_MaxIdleTime)                                                                >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /s |find /I "MaxIdleTime"  >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul 2>&1
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo [_END_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo SRV-028 END                                                                                >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo ######################################################################################     >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo [_RSTART_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo #    : (MaxIdleTime 설정 확인 방법: 60000=1분, 300000=5분)                                       >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
echo [_REND_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-028.txt 2>nul
