      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLASS_CONDITION.
       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER01 PIC S9(9) VALUE -5000.
           01 STRING01 PIC X(9)  VALUE 'ABCDF'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF STRING01 IS ALPHABETIC THEN
               DISPLAY "STRING01 IS ALPHABETIC"

           IF NUMBER01 IS NUMERIC THEN
               DISPLAY "NUMBER01 IS NUMERIC"

           IF STRING01 IS NUMERIC THEN
               DISPLAY "STRING01 IS NUMERIC"
           ELSE
               DISPLAY "STRING01 ISNT NUMERIC IS ALPHABETIC"
           END-IF.
           END PROGRAM CLASS_CONDITION.
