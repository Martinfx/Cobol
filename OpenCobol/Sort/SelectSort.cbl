      ******************************************************************
      * Author: Maxfx
      * Date: 22/5/2017
      * Example for select sort algorithm
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SELECT-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *****************************************************************
      *    Variable for lenght of array
      *****************************************************************
           78 W-LEN-ARR VALUE 10.

      *****************************************************************
      *     Array of numbers
      *****************************************************************
           01 W-ARR PIC 99 OCCURS W-LEN-ARR times.

      *****************************************************************
      *    Counters for array
      *****************************************************************
           01 W-R PIC S99 VALUE 1.
           01 W-I PIC S99 VALUE 1.
           01 W-J PIC S99 VALUE 1.
           01 W-H PIC S99 VALUE 1.

      *****************************************************************
      *    Helper for swap numbers
      *****************************************************************
           01 W-MIN  PIC S99 VALUE 0.
           01 W-SWAP PIC S99 VALUE 0.

      *****************************************************************
      *    Min and max number for "Random numbers"
      *****************************************************************
           01 W-MIN-NUMBER    PIC 99 VALUE 1.
           01 W-MAX-NUMBER    PIC 99 VALUE 99.
           01 W-RANDOM-NUMBER PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM VARYING W-R from 1 by 1 until W-R > W-LEN-ARR

              PERFORM W-LEN-ARR TIMES
              COMPUTE W-RANDOM-NUMBER = FUNCTION RANDOM *
                            (W-MAX-NUMBER - W-MIN-NUMBER + 1) +
                             W-MIN-NUMBER
              END-PERFORM
              MOVE W-RANDOM-NUMBER TO W-ARR(W-R)
              DISPLAY "POS: " W-R " RANDOM NUMBER: " W-ARR(W-R)

            END-PERFORM

           PERFORM SORT-ARRAY.
           GOBACK.

           SORT-ARRAY SECTION.

           PERFORM UNTIL W-I > W-LEN-ARR
             MOVE W-LEN-ARR TO W-MIN
             MOVE W-I TO W-J

             PERFORM UNTIL W-J > W-LEN-ARR
               IF W-ARR(W-MIN) > W-ARR(W-J)
                 MOVE W-J TO W-MIN
               END-IF

               ADD 1 TO W-J
             END-PERFORM

             MOVE W-ARR(W-MIN) TO W-SWAP
             MOVE W-ARR(W-I) TO W-ARR(W-MIN)
             MOVE W-SWAP TO W-ARR(W-I)

             ADD 1 TO W-I
           END-PERFORM.

           PERFORM VARYING W-H FROM 1 BY 1 UNTIL W-H > W-LEN-ARR
           DISPLAY "POS: " W-H " SORTED: " W-ARR(W-H)
           END-PERFORM.
