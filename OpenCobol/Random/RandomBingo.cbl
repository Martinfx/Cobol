      *****************************************************************
      * Author: Maxfx
      * Date: 30.7.2017
      * Example as simple game tip lottery ....
      * This is proof of concept
      * Revision: Maxfx 18/2/2018
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GAME-LOTTERY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *****************************************************************
      *    Variable for lenght of array
      *****************************************************************
           78 W-LEN-ARR VALUE 100.

      *****************************************************************
      *     Array of numbers
      *****************************************************************
           01 W-ARR PIC 999 OCCURS W-LEN-ARR TIMES.

      *****************************************************************
      * Variable for random number.
      *****************************************************************
           01 W-NUM        PIC 9(3).
           01 W-RANDOM-TIP PIC 9(3).
           01 W-TIP        PIC 9(3).

      *****************************************************************
      * Variables for loops
      *****************************************************************
           01 W-I PIC 999 VALUE 1.
           01 W-J PIC 999 VALUE 1.
           01 W-K PIC 999 VALUE 1.

      *****************************************************************
      * Seed for random generator
      *****************************************************************
           01 SEED  PIC 9V999999999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Welcome in the game tip lottery !             -"
            DISPLAY "- You choose one number from 1 to 100!          -"
            DISPLAY "-------------------------------------------------"

            PERFORM INIT-SEED.
            PERFORM GENERATE-NUMBERS.
            PERFORM PRINT-NUMBER.
            GOBACK.

           INIT-SEED SECTION.
           MOVE FUNCTION RANDOM(FUNCTION SECONDS-PAST-MIDNIGHT) TO SEED.

           GENERATE-NUMBERS SECTION.

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Generating numbers .......                    -"
            DISPLAY "-------------------------------------------------"

            PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > W-LEN-ARR
              COMPUTE W-NUM = (FUNCTION RANDOM * 100) + 1
              MOVE W-NUM TO W-ARR(W-I)
            END-PERFORM.

           PRINT-NUMBER SECTION.

      *     Prevent "shake" numbers
            PERFORM UNTIL W-K > 200
              COMPUTE W-RANDOM-TIP = (FUNCTION RANDOM * 100) + 1
              ADD 1 TO W-K
            END-PERFORM

            PERFORM UNTIL W-J > W-RANDOM-TIP
              ADD 1 TO W-J
            END-PERFORM.

            MOVE W-ARR(W-J) TO W-TIP

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Winning number is : " W-TIP
            DISPLAY "-------------------------------------------------".
