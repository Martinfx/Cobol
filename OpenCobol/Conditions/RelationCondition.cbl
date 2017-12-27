      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RELATION-CONDITION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC 9(9) VALUE 50.
           01 NUM02 PIC 9(9) VALUE 6.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NUM01 IS GREATER THAN OR EQUAL TO NUM02 THEN
             DISPLAY 'NUMBER01 IS GREATER OR EQUAL THAN NUMBER02'
           ELSE
             DISPLAY 'NUMBER01 IS LESS THAN NUMBER02'
           END-IF.

           GOBACK.
