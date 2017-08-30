      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEGATED-CONDITION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC 9(2) VALUE 20.
           01 NUM02 PIC 9(9) VALUE 25.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NOT NUM01 IS LESS THAN NUM02 THEN
             DISPLAY "I AM HERE : IF "
           ELSE
             DISPLAY "I AM HERE : ELSE"
           END-IF.

           GOBACK.
