      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEGATED_CONDITION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER1 PIC 9(2) VALUE 20.
           01 NUMBER2 PIC 9(9) VALUE 25.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NOT NUMBER1 IS LESS THAN NUMBER2 THEN
               DISPLAY "I AM HERE : IF "
           ELSE
               DISPLAY "I AM HERE : ELSE"
           END-IF.




       END PROGRAM NEGATED_CONDITION.
