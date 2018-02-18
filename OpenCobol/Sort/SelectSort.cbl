      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 22/5/2017                                                *
      * Program generates numbers to array which then sorts array      *
      * Revision: Maxfx 18/2/2018                                      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SELECT-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      ******************************************************************
      *    Variable for lenght of array                                *
      ******************************************************************
           78 W-LEN-ARR VALUE 30.

      ******************************************************************
      *     Array of numbers                                           *
      ******************************************************************
           01 W-ARR PIC 999 OCCURS W-LEN-ARR TIMES.

      ******************************************************************
      *    Counters for array                                          *
      ******************************************************************
           01 W-R PIC 999 VALUE 1.
           01 W-I PIC 999 VALUE 1.
           01 W-J PIC 999 VALUE 1.
           01 W-H PIC 999 VALUE 1.

      ******************************************************************
      *    Helper for swap numbers                                     *
      ******************************************************************
           01 W-MIN  PIC 999 VALUE 0.
           01 W-SWAP PIC 999 VALUE 0.

      *****************************************************************
      *    Min and max number for "Random numbers"
      *****************************************************************
           01 W-MIN-NUMBER PIC 999 VALUE 1.
           01 W-MAX-NUMBER PIC 999 VALUE 200.
           01 W-RAN-NUMBER PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM GENERATE-RANDOM-NUM.
           PERFORM SORTING-ARRAY.
           GOBACK.

           GENERATE-RANDOM-NUM SECTION.

            PERFORM VARYING W-R FROM 1 BY 1 UNTIL W-R > W-LEN-ARR

              PERFORM W-LEN-ARR TIMES
              COMPUTE W-RAN-NUMBER = FUNCTION RANDOM *
                            (W-MAX-NUMBER - W-MIN-NUMBER + 1) +
                             W-MIN-NUMBER
              END-PERFORM
              MOVE W-RAN-NUMBER TO W-ARR(W-R)
              DISPLAY "POS: " W-R " RANDOM NUMBER: " W-ARR(W-R)

            END-PERFORM.

           SORTING-ARRAY SECTION.

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
