01 WS-CUSTOMER-NAME PIC X(30).
01 WS-CUSTOMER-NAME-LENGTH PIC 9(2).

PROCEDURE DIVISION.
    MOVE SPACES TO WS-CUSTOMER-NAME.
    INSPECT WS-CUSTOMER-NAME TALLYING WS-CUSTOMER-NAME-LENGTH FOR CHARACTERS.

    IF WS-CUSTOMER-NAME-LENGTH = 0 THEN
        DISPLAY "Customer name is missing!" 
        STOP RUN.
    END-IF.
    DISPLAY "Customer name is present."