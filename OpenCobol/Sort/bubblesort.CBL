     ******************************************************************
      * Author: Maxfx
      * Date: 22/5/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

           01 ARR  PIC 99 OCCURS 10 times.
           01 I    PIC S99 VALUE 1.
           01 J    PIC S99 VALUE 0.
           01 K    PIC S99 VALUE 1.
           01 H    PIC S99 VALUE 1.
           01 HELP PIC S99 VALUE 1.
           01 SWAP PIC 9   VALUE 0.

           01 MIN-NUMBER PIC 99 VALUE 1.
           01 MAX-NUMBER PIC 99 VALUE 99.
           01 RANDOM-NUMBER PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *     perform until I > function LENGTH(arr)
            PERFORM VARYING I from 1 by 1 until I > 10

              PERFORM 10 TIMES
              COMPUTE RANDOM-NUMBER = FUNCTION RANDOM *
                            (MAX-NUMBER - MIN-NUMBER + 1) +
                             MIN-NUMBER


      *      DISPLAY 'RANDOM NUMBER:' RANDOM-NUMBER
              END-PERFORM
              MOVE RANDOM-NUMBER TO ARR(I)
              DISPLAY 'RANDOM NUMBER:' ARR(I)
            END-PERFORM

      *     PERFORM VARYING J from 1 by 1 until J > 10 - 1
      *       DISPLAY 'ARR(j): ' arr(j)
      *      DISPLAY 'ARR(j + 1 ): ' arr(j + 1)
      *     END-PERFORM.

           PERFORM sort-array.

           sort-array section.

             PERFORM UNTIL J > 10
      *        MOVE 0 TO SWAP
              move J to K
      *        DISPLAY "J: " J " K: " K
              PERFORM UNTIL K > 10 - 1
                 IF(ARR(K) > ARR(K + 1))
      *              MOVE 1 TO SWAP
                    MOVE ARR(K) TO HELP
      *              DISPLAY "HELP: " HELP
                    MOVE ARR(K + 1) TO ARR(K)
                    MOVE HELP TO  ARR(K + 1)

      *       DISPLAY "ARR(K): " ARR(K) "ARR( + 1): " ARR(K + 1)

                 END-IF

               add 1 to K
              END-PERFORM
               add 1 to j

            END-PERFORM

             PERFORM VARYING H from 1 by 1 until H > 10
             DISPLAY 'Sorted: ' arr(H)
             END-PERFORM.
