      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RELATION-CONDITION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER01 PIC 9(9) VALUE 50.
           01 NUMBER02 PIC 9(9) VALUE 6.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NUMBER01 IS GREATER THAN OR EQUAL TO NUMBER02 THEN
               DISPLAY 'NUMBER01 IS GREATER THAN NUMBER02'
           ELSE
               DISPLAY 'NUMBER01 IS LESS THAN NUMBER02'
           END-IF.

       END PROGRAM RELATION-CONDITION.
