      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 22/5/2017                                                *
      * Revision: Maxfx 4/9/2017                                       *
      * Program generates numbers to array which then sorts array      *
      * Revision: Maxfx 18/2/2018
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLE-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      ******************************************************************
      *    Variable for lenght of array                                *
      ******************************************************************
           78 W-LEN-ARR VALUE 10.

      ******************************************************************
      *     Array of numbers                                           *
      ******************************************************************
           01 W-ARR PIC 99 OCCURS W-LEN-ARR TIMES.

      ******************************************************************
      *    Counters for array                                          *
      ******************************************************************
           01 W-J PIC 99 VALUE 1.
           01 W-K PIC 99 VALUE 1.

           01 W-I PIC 99 VALUE 1.
           01 W-H PIC 99 VALUE 1.
      ******************************************************************
      *    Helper for swap numbers                                     *
      ******************************************************************
           01 W-TEMP PIC 99 VALUE 1.

      ******************************************************************
      *    Min and max number for "Random numbers"                     *
      ******************************************************************
           01 W-MIN-NUM PIC 99 VALUE 1.
           01 W-MAX-NUM PIC 99 VALUE 99.
           01 W-RAN-NUM PIC 99.

      ******************************************************************
      * Initialize seed for random generator                           *
      ******************************************************************
           01 SEED  PIC 9V999999999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM INIT-SEED.
           PERFORM GENERATE-RANDOM-NUM.
           PERFORM SORTING-ARRAY.
           GOBACK.

           INIT-SEED SECTION.
           MOVE FUNCTION RANDOM(FUNCTION SECONDS-PAST-MIDNIGHT) TO SEED.

           GENERATE-RANDOM-NUM SECTION.

           PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > W-LEN-ARR
            PERFORM W-LEN-ARR TIMES
              COMPUTE W-RAN-NUM = FUNCTION RANDOM *
                            (W-MAX-NUM - W-MIN-NUM + 1) +
                             W-MIN-NUM
              END-PERFORM
              MOVE W-RAN-NUM TO W-ARR(W-I)
              DISPLAY 'Unsorted: ' W-ARR(W-I)
            END-PERFORM.

           SORTING-ARRAY SECTION.

           PERFORM VARYING W-J FROM 1 BY 1 UNTIL W-J > W-LEN-ARR
             PERFORM VARYING W-K FROM 1 BY 1 UNTIL W-K >= W-LEN-ARR
               IF(W-ARR(W-K) > W-ARR(W-K + 1))
                 MOVE W-ARR(W-K) TO W-TEMP
                 MOVE W-ARR(W-K + 1) TO W-ARR(W-K)
                 MOVE W-TEMP TO W-ARR(W-K + 1)
               END-IF
             END-PERFORM
           END-PERFORM

           PERFORM VARYING W-H FROM 1 BY 1 UNTIL W-H > W-LEN-ARR
           DISPLAY 'Sorted: ' W-ARR(W-H)
           END-PERFORM.
