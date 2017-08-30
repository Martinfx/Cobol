      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMBINED-CONDITIONS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC 9(3) VALUE 50.
           01 NUM02 PIC 9(3) VALUE 20.
           01 NUM03 PIC 9(3) VALUE 30.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NUM01 IS LESS THAN NUM02 AND NUM01 = NUM03 THEN
             DISPLAY "I AM HERE!"
           ELSE
             DISPLAY "I AM HERE :( "
           END-IF.

           GOBACK.
