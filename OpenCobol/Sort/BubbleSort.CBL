      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 22/5/2017                                                *
      * Program generate number and add to array and then sort array   *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLE-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      ******************************************************************
      *     Array of numbers                                           *
      ******************************************************************
           78 W-LEN-ARR VALUE 10.
           01 W-ARR PIC 99 OCCURS W-LEN-ARR TIMES.

      ******************************************************************
      *    Counters for array                                          *
      ******************************************************************
           01 W-I PIC S99 VALUE 1.
           01 W-J PIC S99 VALUE 0.
           01 W-K PIC S99 VALUE 1.
           01 W-H PIC S99 VALUE 1.

      ******************************************************************
      *    Helper for swap numbers                                     *
      ******************************************************************
           01 W-SWAP PIC S99 VALUE 1.

      ******************************************************************
      *    Min and max number for "Random numbers"                     *
      ******************************************************************
           01 W-MIN-NUM PIC 99 VALUE 1.
           01 W-MAX-NUM PIC 99 VALUE 99.
           01 W-RAN-NUM PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM VARYING W-I from 1 by 1 until W-I > W-LEN-ARR

              PERFORM W-LEN-ARR TIMES
              COMPUTE W-RAN-NUM = FUNCTION RANDOM *
                            (W-MAX-NUM - W-MIN-NUM + 1) +
                             W-MIN-NUM

              END-PERFORM
              MOVE W-RAN-NUM TO W-ARR(W-I)
              DISPLAY 'RANDOM NUMBER:' W-ARR(W-I)
            END-PERFORM

      *     PERFORM VARYING W-J from 1 by 1 until W-J > 10 - 1
      *       DISPLAY 'W-ARR(j): ' arr(j)
      *      DISPLAY 'W-ARR(j + 1 ): ' arr(j + 1)
      *     END-PERFORM.

           PERFORM SORT-ARRAY.
           GOBACK.

           SORT-ARRAY SECTION.

           PERFORM UNTIL W-J > W-LEN-ARR
             MOVE W-J TO W-K

             PERFORM UNTIL W-K > W-LEN-ARR - 1

               IF(W-ARR(W-K) > W-ARR(W-K + 1))
                 MOVE W-ARR(W-K) TO W-SWAP
                 MOVE W-ARR(W-K + 1) TO W-ARR(W-K)
                 MOVE W-SWAP TO  W-ARR(W-K + 1)
               END-IF

               ADD 1 to W-K
             END-PERFORM

             ADD 1 to W-J
           END-PERFORM

           PERFORM VARYING W-H FROM 1 BY 1 UNTIL W-H > W-LEN-ARR
           DISPLAY 'Sorted: ' W-ARR(W-H)
           END-PERFORM.
