       identification division.
       program-id. my_program.
       data division.
       working-storage section.
       

	   01 WS-STATES.
	      05 WS-STACK-SIZE PIC 9(9) VALUE 0.
	      05 WS-STATE occurs 512 times.
	          10 WS-STATE-RANK PIC 99.
	          10 WS-PATTERN occurs 32 times.
		         15 WS-PATTERN-VAL PIC 9 value 0.
      
	   01 WS-TEMP-STATE-RANK PIC 99.
	   01 WS-TEMP-PATTERN occurs 32 times.
	      05 WS-TEMP-PATTERN-VAL PIC 9 value 0.
	   01 WS-TEMP-RANK PIC 99 VALUE 0.
	   01 N PIC 99 value 0.
	   01 N2 PIC 99 value 0.
	   01 POS1 PIC 99 value 0.
	   01 POS2 PIC 99 VALUE 0.
	   01 COMPUTE-NUMBER PIC 99 value 0.
	   01 WS-SUM PIC 9(9) value 0.
       local-storage section.
       01 I PIC 99.
       procedure division.

	       perform until N>0 AND N <17
	         display "Donne moi un nombre entre 1 et 16 compris"
		     accept N
		     if N < 1 OR N > 16
		         display "Nombre trop petit !"
		     end-if
		   end-perform.
		   display N
		     add N to N giving N2
		     move 2 to WS-STACK-SIZE
		     move N to WS-STATE-RANK(1)
           

		   perform until WS-STACK-SIZE = 1
               subtract 1 from WS-STACK-SIZE
               move WS-STATE-RANK(WS-STACK-SIZE) to WS-TEMP-RANK

               perform varying I from 1 by 1 until I > N2
                   move WS-PATTERN-VAL(WS-STACK-SIZE, I)
                   to WS-TEMP-PATTERN-VAL(I)
               end-perform
               move 0 to POS1
			   subtract WS-TEMP-RANK from N2
			   giving COMPUTE-NUMBER
               subtract 1 from COMPUTE-NUMBER
			   giving COMPUTE-NUMBER
			   perform COMPUTE-NUMBER times
                    add 1 to POS1
					add 1 to POS2

               if WS-TEMP-PATTERN-VAL(POS1) equal 0 AND
                   WS-TEMP-PATTERN-VAL(POS2) equal 0
 
					   if WS-TEMP-RANK equal 1
			               add 1 to WS-SUM
			            else
					   subtract 1 from WS-TEMP-RANK giving
                       WS-STATE-RANK(WS-STACK-SIZE)
                       perform varying I from 1 by 1 until I > N2
                           move WS-TEMP-PATTERN-VAL(I)
                           to WS-PATTERN-VAL(WS-STACK-SIZE,I)
                       end-perform
                       move 1 to WS-PATTERN-VAL(WS-STACK-SIZE,POS1)
                       move 1 to WS-PATTERN-VAL(WS-STACK-SIZE,POS2)
                       add 1 to WS-STACK-SIZE
					   end-if
				end-if
               end-perform
           end-perform.
           divide WS-SUM by 2 GIVING WS-SUM
           display "Langford(2,",N,")=",WS-SUM
       stop run.
