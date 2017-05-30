val goodCount = ref 0;
val badCount = ref 0;

(* checkExpect: 'a 'a -> Bool
 * tells us if function, f, evaluates to its expected value, a*)
fun checkExpect (f, a) =
	if f = a then goodCount := (!goodCount) + 1
	else badCount := (!badCount) + 1;

(* printResults: Unit -> Units
 * prints the results of all check expects *)
fun printResults() =
	if !badCount = 0 then
		case goodCount of ref 0 => print("")
						| ref 1 => print("Test passed!\n")
						| ref 2 => print("Both tests passed!\n")
						| n 	=> print("All " ^ Int.toString(!n) ^ " tests passed!\n")
	else print(Int.toString(!goodCount) ^ "/" ^
	  		   Int.toString(!goodCount + !badCount) ^
			   " tests passed!\n");