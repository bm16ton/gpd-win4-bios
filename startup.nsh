echo -off
for %i in fs0 fs1 fs2 fs3 fs4 fs5 fs6 fs7 fs8
	if exist %i:\%0 then 
		%i:
		cd win4_BIOS_Relase_V0.58
		Flash.nsh

		cls


		reset
		goto: EOF
	else
	echo not find %i
	endif
endfor
:EOF
