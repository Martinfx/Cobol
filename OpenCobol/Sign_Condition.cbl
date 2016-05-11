      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIGN-CONDITION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       * For signed number we use "S"
           01 NUMBER01 PIC S9(9) VALUE -5000.
           01 NUMBER02 PIC S9(9) VALUE 6.
           01 NUMBER03 PIC 9(9) VALUE ZERO.
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           IF NUMBER01 IS POSITIVE THEN
               DISPLAY 'NUMBER01 IS POSITIVE'.

           IF NUMBER01 IS NEGATIVE THEN
               DISPLAY 'NUMBER01 IS NEGATIVE'.

           IF NUMBER02 IS ZERO THEN
               DISPLAY 'NUMBER02 IS ZERO'.

           IF NUMBER02 IS POSITIVE THEN
               DISPLAY 'NUMBER02 IS POSITIVE'.

           IF NUMBER03 IS ZERO THEN
               DISPLAY 'NUMBER03 IS ZERO'.

           IF NUMBER03 IS POSITIVE THEN
               DISPLAY 'NUMBER03 IS POSITIVE'.

       END PROGRAM SIGN-CONDITION.
