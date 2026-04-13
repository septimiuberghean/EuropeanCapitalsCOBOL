       IDENTIFICATION DIVISION.
       PROGRAM-ID. GuessEuropeanCapital.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 TABLE-OF-COUNTRIES.
           05 EACH-COUNTRY OCCURS 30 TIMES.
              10 COUNTRY            PIC A(25).
              10 CAPITAL            PIC A(25).


       01 IDX                  PIC 99 VALUE 0.
       01 SCORE                PIC 9  VALUE 0.
       01 PLAYER-ANSWER        PIC X(25) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM INIT-COUNTRIES
           DISPLAY "EUROPE CAPITAL QUIZ"
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 5
               COMPUTE IDX = FUNCTION MOD(
                   FUNCTION RANDOM(FUNCTION CURRENT-DATE), 30) + 1
               DISPLAY "What is the capital of "
                   COUNTRY(IDX) "?"
               DISPLAY "Your answer: " WITH NO ADVANCING
               ACCEPT PLAYER-ANSWER
               IF FUNCTION UPPER-CASE(PLAYER-ANSWER) =
                  FUNCTION UPPER-CASE(CAPITAL(IDX))
                   DISPLAY "Correct!"
                   ADD 1 TO SCORE
               ELSE
                   DISPLAY "WRONG! Answer: " CAPITAL(IDX)
               END-IF
           END-PERFORM
           DISPLAY " "
           DISPLAY "Score: " SCORE "/5"
           STOP RUN.

       INIT-COUNTRIES.
           MOVE 'PORTUGAL               ' TO COUNTRY(1)
           MOVE 'LISBON                 ' TO CAPITAL(1)
           MOVE 'MALTA                  ' TO COUNTRY(2)
           MOVE 'VALETTA                ' TO CAPITAL(2)
           MOVE 'SPAIN                  ' TO COUNTRY(3)
           MOVE 'MADRID                 ' TO CAPITAL(3)
           MOVE 'ITALY                  ' TO COUNTRY(4)
           MOVE 'ROMA                   ' TO CAPITAL(4)
           MOVE 'FRANCE                 ' TO COUNTRY(5)
           MOVE 'PARIS                  ' TO CAPITAL(5)
           MOVE 'SWITZERLAND            ' TO COUNTRY(6)
           MOVE 'BERN                   ' TO CAPITAL(6)
           MOVE 'LIECHTENSTEIN          ' TO COUNTRY(7)
           MOVE 'VADUZ                  ' TO CAPITAL(7)
           MOVE 'CROATIA                ' TO COUNTRY(8)
           MOVE 'ZAGREB                 ' TO CAPITAL(8)
           MOVE 'BOSNIA AND HERZEGOVINA ' TO COUNTRY(9)
           MOVE 'SARAJEVO               ' TO CAPITAL(9)
           MOVE 'MONTENEGRO             ' TO COUNTRY(10)
           MOVE 'PODGORICA              ' TO CAPITAL(10)
           MOVE 'SERBIA                 ' TO COUNTRY(11)
           MOVE 'BELGRADE               ' TO CAPITAL(11)
           MOVE 'ALBANIA                ' TO COUNTRY(12)
           MOVE 'TIRANA                 ' TO CAPITAL(12)
           MOVE 'CYPRUS                 ' TO COUNTRY(13)
           MOVE 'NICOSIA                ' TO CAPITAL(13)
           MOVE 'BELGIUM                ' TO COUNTRY(14)
           MOVE 'BRUSSELS               ' TO CAPITAL(14)
           MOVE 'AUSTRIA                ' TO COUNTRY(15)
           MOVE 'VIENNA                 ' TO CAPITAL(15)
           MOVE 'KOSOVO                 ' TO COUNTRY(16)
           MOVE 'PRISTINA               ' TO CAPITAL(16)
           MOVE 'CZECH REPUBLIC         ' TO COUNTRY(17)
           MOVE 'PRAGUE                 ' TO CAPITAL(17)
           MOVE 'HUNGARY                ' TO COUNTRY(18)
           MOVE 'BUDAPEST               ' TO CAPITAL(18)
           MOVE 'SLOVAKIA               ' TO COUNTRY(19)
           MOVE 'BRATISLAVA             ' TO CAPITAL(19)
           MOVE 'POLAND                 ' TO COUNTRY(20)
           MOVE 'WARSAW                 ' TO CAPITAL(20)
           MOVE 'ROMANIA                ' TO COUNTRY(21)
           MOVE 'BUCHAREST              ' TO CAPITAL(21)
           MOVE 'BULGARIA               ' TO COUNTRY(22)
           MOVE 'SOFIA                  ' TO CAPITAL(22)
           MOVE 'UKRAINE                ' TO COUNTRY(23)
           MOVE 'KYIV                   ' TO CAPITAL(23)
           MOVE 'IRELAND                ' TO COUNTRY(24)
           MOVE 'DUBLIN                 ' TO CAPITAL(24)
           MOVE 'MOLDOVA                ' TO COUNTRY(25)
           MOVE 'CHISINAU               ' TO CAPITAL(25)
           MOVE 'LITHUANIA              ' TO COUNTRY(26)
           MOVE 'VILNIUS                ' TO CAPITAL(26)
           MOVE 'LATVIA                 ' TO COUNTRY(27)
           MOVE 'RIGA                   ' TO CAPITAL(27)
           MOVE 'ESTONIA                ' TO COUNTRY(28)
           MOVE 'TALLINN                ' TO CAPITAL(28)
           MOVE 'NORWAY                 ' TO COUNTRY(29)
           MOVE 'OSLO                   ' TO CAPITAL(29)
           MOVE 'FINLAND                ' TO COUNTRY(30)
           MOVE 'HELSINKI               ' TO CAPITAL(30).
