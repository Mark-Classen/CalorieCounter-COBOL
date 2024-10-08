       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalorieCounter.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Food-Record.
           05 Food-Name PIC X(30).
           05 Food-Calorie PIC 999v99.
            05 Food-Calorie-V REDEFINES Food-Calorie PIC 999v99.
       01 Total-Calorie PIC 999v99 VALUE 0.
       01 User-Input PIC X(30).


       PROCEDURE DIVISION.

       MAIN-LOGIC.
           DISPLAY "Enter food name (or type 'exit' to finish): ".
       ACCEPT User-Input.


               DISPLAY "Enter calories for " User-Input ": ".
               ACCEPT Food-Calorie.
               
               MOVE Food-Calorie-V TO Food-Calorie.
               IF User-Input = "exit" OR "Exit" STOP RUN.

               MOVE User-Input TO Food-Name.
               ADD Food-Calorie TO Total-Calorie.
               MOVE Food-Calorie-V TO Food-Calorie.
               
           DISPLAY "Total calories so far: " Total-Calorie.
         
           IF User-Input = "exit" OR "Exit" STOP RUN.
           PERFORM MAIN-LOGIC.
