       identification division.
       program-id. my_program.
       data division.
       working-storage section.
       

	   01 WS-STATES
	      05 WS-STACK-SIZE COMP value 0.
	      05 WS-STATE occurs 512 times.
	          10 WS-STATE-RANK PIC 99.
	          10 WS-PATTERN occurs 32 times.
		         15 WS-PATTERN-VAL PIC 9 value 0.
	   
	   01 N PIC 99 value 0.
	   01 N2 PIC 99 value 0.
       procedure division.

	       perform until N>0 AND N <17
	       display "Donne moi un nombre entre 1 et 16 compris"
		   accept N
		   if N < 1 OR N > 16
		     display "Nombre trop petit !"
		   end-if.
		   add N to N giving N2
		   move 1 to WS-STACK-SIZE


		   perform until WS-STACK-SIZE equal 0
               
		   end-perform.
       stop run.
       