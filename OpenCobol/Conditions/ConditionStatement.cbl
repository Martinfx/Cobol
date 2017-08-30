      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITION-STATEMENT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC 9(9) VALUE 5.
           01 NUM02 PIC 9(9) VALUE 6.
           01 NUM03 PIC 9(9) VALUE 7.
           01 NUM04 PIC 9(9) VALUE 8.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NUM01 <= NUM02 THEN
             DISPLAY "IS NOT LESS"

             IF NUM03 >= NUM04 THEN
               DISPLAY "IS GREATER"
             ELSE
               DISPLAY "IS NOT GREATER"
             END-IF

           ELSE
             DISPLAY "IS LESS"
           END-IF.

           GOBACK.
