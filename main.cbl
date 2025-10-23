       identification division.
       program-id. my_program.
       data division.
       working-storage section.
       
       01 WS-STUDENTS.
           02 WS-STUDENT OCCURS 6 TIMES.
               03 WS-STUDENT-NAME      PIC X(25)   VALUE "John".
               03 WS-STUDENT-SURNAME   PIC X(25)   VALUE "Doe".
               03 WS-STUDENT-ID        PIC 9(8)    VALUE 0.
       local-storage section.
	   
	   01 I pic 9.    

   

       procedure division.
           perform varying I from 1 by 1 until I>6
               display "Nom: ",WS-STUDENT-SURNAME(1),
               "Prenom: ", WS-STUDENT-NAME(1),
               "id: ",WS-STUDENT-ID(1)
		   end-perform.
           
       stop run.
