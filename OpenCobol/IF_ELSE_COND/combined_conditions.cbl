      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      ******************************************************************
       IDENTIFICATION DIVISION.

       PROGRAM-ID. COMBINED_CONDITIONS.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMBER01 PIC 9(3) VALUE 50.
           01 NUMBER02 PIC 9(3) VALUE 20.
           01 NUMBER03 PIC 9(3) VALUE 30.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           IF NUMBER01 IS LESS THAN NUMBER02 AND NUMBER01=NUMBER03 THEN
               DISPLAY "I AM HERE!"
           ELSE
               DISPLAY "I AM HERE :( "
           END-IF.


       END PROGRAM COMBINED_CONDITIONS.
