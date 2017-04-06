      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.

       PROGRAM-ID. EVALUATE_VERB.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER01 PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           MOVE 3 TO NUMBER01.

      *  "Switch"

           EVALUATE TRUE
               WHEN NUMBER01 > 2
                   DISPLAY "NUMBER01 GREATER THAN 2"

           WHEN NUMBER01 < 0
               DISPLAY "NUMBER01 LESS THAN 0"

           WHEN OTHER
               DISPLAY "INVALID VALUE OF NUMBER01"

           END-EVALUATE.


           END PROGRAM EVALUATE_VERB.
