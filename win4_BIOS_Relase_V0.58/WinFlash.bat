@ECHO OFF
@echo Warning: You are about to update your system firmware.
@echo Before continuing, please save your work and close all other application
@echo When the program is running
@echo 1. Do not put the system into standby or hibernation
@echo 2. Do not launch other application
@echo 3. Do not press Power, open/close LID, insert or remove USB
@echo 4. Below condition, System can not upgrade BIOS
@echo    (1) Un-plug AC adaptor
@echo    (2) Battery capacity lower or equal than 10 percentage
PAUSE
:START
afuwinx64.exe ARP27058.rom /p /b /n /r /k /x /l
if %errorlevel% == 13 goto :FAIL
shutdown -r -t 5
goto PASS

:FAIL
@echo Please insert adapter and try again!
PAUSE
goto START

:PASS
@echo ---------------------------------------------------------- 
@echo  ** * **           *            ********      ********
@echo  **    **         ***          ***    ***    ***    ***
@echo  **     **       ** **        ***      ***  ***      ***
@echo  **     **      **   **        ***      **   ***      **
@echo  **    **      **     **        ***           *** 
@echo  ** * **      **  ***  **          ***           ***
@echo  **          **         **    **      ***   **      ***
@echo  **         **           **   ***      ***  ***      ***
@echo  **        **             **   ***    ***    ***    ***
@echo  **       **               **   ********      ********
@echo ----------------------------------------------------------

@echo Update Susscefully, System will restart in 5 second!                                                                 
timeout /T 5