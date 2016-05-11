      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITION-STATEMENT.
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER01 PIC 9(9) VALUE 5.
           01 NUMBER02 PIC 9(9) VALUE 6.
           01 NUMBER03 PIC 9(9) VALUE 7.
           01 NUMBER04 PIC 9(9) VALUE 8.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

            IF NUMBER01  <=  NUMBER02 THEN
              DISPLAY "ISNT LESS "
              IF NUMBER03 >= NUMBER04 THEN
                  DISPLAY "IS BIGGER"
              ELSE
                  DISPLAY "ISNT BIGGER"
              END-IF
            ELSE
              DISPLAY "IS LESS"
           END-IF.

       END PROGRAM CONDITION-STATEMENT.
