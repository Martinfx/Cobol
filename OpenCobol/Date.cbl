       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORK-DATE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
             01 RATE  PIC 9(9) VALUE 10.

       LINKAGE SECTION.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
      * MULTIPLY RATE BY HOURS GIVING PAY.
       DISPLAY "PAY : " RATE.



       END PROGRAM WORK-DATE.
