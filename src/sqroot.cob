identification division.
program-id. sqroot.

data division.

working-storage section.

linkage section.
01 number-input picture 9(11)v9(6).
77 approx picture 9(11)v9(6).

procedure division using number-input, approx.
	perform calculation 1000 times.

calculation.
	compute approx = ((approx) + (number-input / approx)) / 2.
