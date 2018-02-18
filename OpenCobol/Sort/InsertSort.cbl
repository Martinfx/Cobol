      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 22/5/2017                                                *
      * Program generates numbers to array which then sorts array      *
      ******************************************************************
       PROGRAM-ID. INSERT-SORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      ******************************************************************
      *    Variable for lenght of array                                *
      ******************************************************************
           78 W-LEN-ARR VALUE 20.

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
           01 W-SWAP PIC 999 VALUE 1.
           01 W-KEY  PIC 999 VALUE 1.

      ******************************************************************
      *    Min and max number for "Random numbers"                     *
      ******************************************************************
           01 W-MIN-NUM PIC 99 VALUE 1.
           01 W-MAX-NUM PIC 99 VALUE 99.
           01 W-RAN-NUM PIC 99.

      *****************************************************************
      * Seed for random generator
      *****************************************************************
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

            PERFORM VARYING W-R FROM 1 BY 1 UNTIL W-R > W-LEN-ARR

              PERFORM W-LEN-ARR TIMES
              COMPUTE W-RAN-NUM = FUNCTION RANDOM *
                            (W-MAX-NUM - W-MIN-NUM + 1) +
                             W-MIN-NUM
              END-PERFORM
              MOVE W-RAN-NUM TO W-ARR(W-R)
              DISPLAY "POS: " W-R " RANDOM NUMBER: " W-ARR(W-R)

            END-PERFORM.

           SORTING-ARRAY SECTION.

           PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > W-LEN-ARR
             MOVE W-ARR(W-I) TO W-KEY
             COMPUTE W-J = W-I - 1

             PERFORM UNTIL W-J >= 0 AND W-ARR(W-J) < W-KEY
               MOVE W-ARR(W-J) TO W-ARR(W-J + 1)
               COMPUTE W-J = W-J - 1
             END-PERFORM

             MOVE W-KEY TO W-ARR(W-J + 1)
           END-PERFORM.

           PERFORM VARYING W-H FROM 1 BY 1 UNTIL W-H > W-LEN-ARR
           DISPLAY "POS: " W-H " SORTED: " W-ARR(W-H)
           END-PERFORM.
