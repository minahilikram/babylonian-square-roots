identification division.
program-id. sqroot.

data division.

working-storage section.

01 standard-input picture x(80).

procedure division.
	display "Hello World! ".
	
	accept standard-input from console.
	display standard-input.
exit program.

