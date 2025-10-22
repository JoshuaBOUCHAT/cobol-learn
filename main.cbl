       identification division.
       program-id. my_program.
       data division.
       local-storage section.

       working-storage section.
       
       01 WS-STUDENTS.
           02 WS-STUDENT OCCURS 6 TIMES.
               03 WS-STUDENT-NAME PIC X(25) VALUE "John".
               03 WS-STUDENT-SURNAME PIC X(25) VALUE "Doe".
               03 WS-STUDENT-ID PIC 9(8) VALUE 0.

       procedure division.
           display "Entre le nombre de puissance de 2 ajoute"
           accept N
           perform until I>N
               add I-VAL to LS-SUM 
               divide I-VAL by 2 giving I-VAL
               display "La valeur de la somme apres ",N "iteration",
                   "est de: ",LS-SUM
               add 1 to I
           end-perform.
       stop run.
