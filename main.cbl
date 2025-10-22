       IDENTIFICATION DIVISION.
       PROGRAM-ID. BONJOUR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(8).
       01 SQUARE PIC 9(8) VALUE 0.

       local-storage section.
       01 I PIC 9(4) VALUE 0.

       procedure division.
           display "Donne moi un nombre"
           accept N

           perform varying I from 0 by 1 until I>N
               display "i=",I
           end-perform.
       stop run.
