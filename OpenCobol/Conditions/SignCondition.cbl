      ******************************************************************
      * Author: Maxfx
      * Date: 11/5/2016
      * Revision: Maxfx 30/8/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIGN-CONDITION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      ******************************************************************
      * For signed number we use "S"
      ******************************************************************
           01 NUM01 PIC S9(9) VALUE -5000.
           01 NUM02 PIC S9(9) VALUE 6.
           01 NUM03 PIC 9(9) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF NUM01 IS POSITIVE THEN
             DISPLAY 'NUM01 IS POSITIVE'
           END-IF

           IF NUM01 IS NEGATIVE THEN
             DISPLAY 'NUM01 IS NEGATIVE'
           END-IF

           IF NUM02 IS ZERO THEN
             DISPLAY 'NUM02 IS ZERO'
           END-IF

           IF NUM02 IS POSITIVE THEN
             DISPLAY 'NUM02 IS POSITIVE'
           END-IF

           IF NUM03 IS ZERO THEN
             DISPLAY 'NUM03 IS ZERO'
           END-IF

           IF NUM03 IS POSITIVE THEN
             DISPLAY 'NUM03 IS POSITIVE'
           END-IF.

           GOBACK.
