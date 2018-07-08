      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 8/7/2018                                                 *
      * Program demonstration struct in COBOL with arrays              *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRUCT-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *****************************************************************
      * Helper for for-loop.
      *****************************************************************
       01 W-I PIC 99 VALUE 1.
       01 W-J PIC 99 VALUE 1.

      *****************************************************************
      * The struct contains array "items" of 5 elements.
      *****************************************************************
       78 W-LEN-ARR1 VALUE 5.
       78 W-LEN-ARR2 VALUE 10.

       01 W-STRUCT.
          05 W-ARRAY  PIC S99 OCCURS W-LEN-ARR1 TIMES.
          05 W-ARRAY2 PIC S99 OCCURS W-LEN-ARR2 TIMES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM ARRAY-ONE.
           PERFORM ARRAY-TWO.
           GOBACK.

       ARRAY-ONE SECTION.

           PERFORM UNTIL W-I > W-LEN-ARR1
             MOVE W-I TO W-ARRAY(W-I)
             ADD 1 TO W-I
           END-PERFORM.

           MOVE 1 TO W-I.

           PERFORM UNTIL W-I > W-LEN-ARR1
             DISPLAY "Array1 contains number: " W-ARRAY(W-I)
             ADD 1 TO W-I
           END-PERFORM.

       ARRAY-TWO SECTION.

           PERFORM UNTIL W-J > W-LEN-ARR2
             MOVE W-J TO W-ARRAY2(W-J)
             ADD 1 TO W-J
           END-PERFORM.

           DISPLAY "-------------------------"

           MOVE 1 TO W-J.

           PERFORM UNTIL W-J > W-LEN-ARR2
             DISPLAY "Array2 contains number: " W-ARRAY2(W-J)
             ADD 1 TO W-J
           END-PERFORM.
