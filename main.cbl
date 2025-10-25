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
           
           
       STOP RUN.
