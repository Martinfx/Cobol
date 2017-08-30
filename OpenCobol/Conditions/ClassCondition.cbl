      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLASS-CONDITION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC S9(9) VALUE -5000.
           01 STR01 PIC X(9)  VALUE 'ABCDF'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF STR01 IS ALPHABETIC THEN
             DISPLAY "STR01 IS ALPHABETIC"
           END-IF.

           IF NUM01 IS NUMERIC THEN
             DISPLAY "NUM01 IS NUMERIC"
           END-IF.

           IF STR01 IS NUMERIC THEN
             DISPLAY "STR01 IS NUMERIC"
           ELSE
             DISPLAY "STR01 ISNT NUMERIC IS ALPHABETIC"
           END-IF.

           GOBACK.
