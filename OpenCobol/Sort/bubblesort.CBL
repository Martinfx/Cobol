      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 22/5/2017                                                *
      * Program generate number and add to array and sort array        *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.BUBBLE-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *****************************************************************
      *     Array of numbers
      *****************************************************************
           01 W-ARR  PIC 99 OCCURS 10 times.

      *****************************************************************
      *    Counters for array
      *****************************************************************
           01 W-I    PIC S99 VALUE 1.
           01 W-J    PIC S99 VALUE 0.
           01 W-K   PIC S99 VALUE 1.
           01 W-H    PIC S99 VALUE 1.
      *****************************************************************
      *    Helper for swap numbers
           01 W-SWAP PIC S99 VALUE 1.
      *****************************************************************
      *     01 SWAP PIC 9   VALUE 0.

      *****************************************************************
      *    Min and max number for "Random numbers"
      *****************************************************************
           01 W-MIN-NUMBER PIC 99 VALUE 1.
           01 W-MAX-NUMBER PIC 99 VALUE 99.
           01 W-RANDOM-NUMBER PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM VARYING W-I from 1 by 1 until W-I > 10

              PERFORM 10 TIMES
              COMPUTE W-RANDOM-NUMBER = FUNCTION RANDOM *
                            (W-MAX-NUMBER - W-MIN-NUMBER + 1) +
                             W-MIN-NUMBER


      *      DISPLAY 'RANDOM NUMBER:' W-RANDOM-NUMBER
              END-PERFORM
              MOVE W-RANDOM-NUMBER TO W-ARR(W-I)
              DISPLAY 'RANDOM NUMBER:' W-ARR(W-I)
            END-PERFORM

      *     PERFORM VARYING W-J from 1 by 1 until W-J > 10 - 1
      *       DISPLAY 'W-ARR(j): ' arr(j)
      *      DISPLAY 'W-ARR(j + 1 ): ' arr(j + 1)
      *     END-PERFORM.

           PERFORM SORT-ARRAY.

           SORT-ARRAY SECTION.

             PERFORM UNTIL W-J > 10
      *        MOVE 0 TO SWAP
              move W-J to W-K
      *        DISPLAY "W-J: " W-J " W-K: " W-K
              PERFORM UNTIL W-K > 10 - 1
                 IF(W-ARR(W-K) > W-ARR(W-K + 1))
      *              MOVE 1 TO SWAP
                    MOVE W-ARR(W-K) TO W-SWAP
      *              DISPLAY "HELP: " HELP
                    MOVE W-ARR(W-K + 1) TO W-ARR(W-K)
                    MOVE W-SWAP TO  W-ARR(W-K + 1)

      *       DISPLAY "W-ARR(W-K): " W-ARR(W-K) "W-ARR( + 1): " W-ARR(W-K + 1)

                 END-IF

                 ADD 1 to W-K
              END-PERFORM
              ADD 1 to W-J

            END-PERFORM

             PERFORM VARYING W-H FROM 1 BY 1 UNTIL W-H > 10
             DISPLAY 'Sorted: ' W-ARR(W-H)
             END-PERFORM.
