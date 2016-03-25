identification division.
program-id. solvesqroot.

data division.

working-storage section.
01 accept-input picture x(80).
01 number-input picture 9(11)v9(6).
01 approx picture 9(11)v9(6).
01 number-out  picture z(11)9.9(6).
01 approx-out  picture z(11)9.9(6).
01 i picture 9(36) value 0.
01 validation picture 9 value 1.

procedure division.
begin.
	perform user-input
		until accept-input = 'Q'.
	stop run.

user-input.
	display ' '.
	display 'ENTER NUMBER TO SQRT  ||  [Q]UIT'.
	accept accept-input.
	perform validate-input.

validate-input.
	move accept-input to number-input.
	if accept-input(1:1) >= 0 and accept-input(1:1) <= 9 and accept-input(1:1) not = 'Q' and number-input not = 0
		perform main
	else if accept-input(1:1) = '-'
		display 'INVALID INPUT.'
	else if accept-input(1:1) not = 'Q'
		display 'NOT A VALID NUMBER.'
	end-if.


main.
	divide 2 into number-input giving approx.
	call 'sqroot' using number-input, approx.
	move approx to approx-out.
	move number-input to number-out.
	perform print.
	display number-out '     ' approx-out.

print.
	display '--------------------------------------------'.
	display '       NUMBER               SQUARE ROOT     '.
	display '--------------------   ---------------------'.
