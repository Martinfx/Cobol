      ******************************************************************
      * Author: Maxfx
      * Date: 30.7.2017
      * Example as simple game tip lottery ....
      * This is proof of concept
      ******************************************************************
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

           01 W-R PIC S999 VALUE 1.
           01 W-I PIC S999 VALUE 1.
           01 W-X PIC S999 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Welcome in the game tip lottery !             -"
            DISPLAY "- You choose one number from 1 to 100!          -"
            DISPLAY "-------------------------------------------------"

            PERFORM GENERATE-NUMBERS.
            PERFORM PRINT-NUMBER.
            GOBACK.

            GENERATE-NUMBERS SECTION.

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Generating numbers .......                    -"
            DISPLAY "-------------------------------------------------"

            PERFORM VARYING W-R FROM 1 BY 1 UNTIL W-R > W-LEN-ARR
              COMPUTE W-NUM = (FUNCTION RANDOM * 100) + 1
              MOVE W-NUM TO W-ARR(W-R)
            END-PERFORM.

            PRINT-NUMBER SECTION.

      *     Prevent "shake" numbers
            PERFORM UNTIL W-X > 200
              COMPUTE W-RANDOM-TIP = (FUNCTION RANDOM * 100) + 1
              ADD 1 TO W-X
            END-PERFORM

            PERFORM UNTIL W-I > W-RANDOM-TIP
      *        DISPLAY "NUM: " W-ARR(W-I)
              ADD 1 TO W-I
            END-PERFORM.

            MOVE W-ARR(W-I) TO W-TIP

            DISPLAY "-------------------------------------------------"
            DISPLAY "- Winning number is : " W-TIP
            DISPLAY "-------------------------------------------------".
