       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEARN-FILE.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           

       DATA DIVISION.
       
       FILE SECTION.

       WORKING-STORAGE SECTION.
       
       LOCAL-STORAGE SECTION.
       01 N PIC 99.
       01 RES PIC 9(9) VALUE 1.
       
       PROCEDURE DIVISION.
           DISPLAY "Entre un nombre"
           ACCEPT N

           PERFORM UNTIL N EQUAL 0
               MULTIPLY RES BY N GIVING RES
               SUBTRACT 1 FROM N
           END-PERFORM.
           DISPLAY "La factoriel vaut : ",RES   
       STOP RUN.
