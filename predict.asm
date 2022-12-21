.MODEL SMALL
 
.DATA
MSG1 DB "-------------------[ PREDICT THE WINNER OF THE CHAMPIONSHIP ]-------------------","$"
MSG2 DB "      INSRUCTION ***** CHOOSE TEAM(LETTER) WIHT NUMBERS FROM 1 : 4 *****         ","$"
MSG3 DB "   &   ","$"
MSG4 DB "CHOOSE THE WINNER: ","$"
MSG5 DB  "                  CHAMPIONSHIP WINNER IS :  ","$"
MFRAME DB "--------------------------------------------------------------------------------","$"
FRAME DB "           ****************************************","$"

FIR DB "FIRST TEAM: ","$"
SEC DB "  SECOND TEAM: ","$"

GROUPS DB " ************** GROUPS **************","$"
QUARTAR DB " ************** QUARTER FINAL **************","$"
SEMI DB " ************** SEMI FINAL **************","$"
FINAL DB " ************** THE FINAL **************","$"

GROUPONE DB "GROUP-ONE --> A , B , C ,D ","$"
GROUPA DB "A","B","C","D","$"
FIRSTA DB ?
SECONDA DB ?

GROUPTWO DB "GROUP-TWO --> E , F , G ,H ","$"
GROUPB DB "E","F","G","H","$"
FIRSTB DB ?
SECONDB DB ?

GROUPTHREE DB "GROUP-THREE --> I , J , K ,L ","$"
GROUPC DB "I","J","K","L","$"
FIRSTC DB ?
SECONDC DB ?

GROUPFOUR DB "GROUP-FOUR --> M , N , O ,P ","$"
GROUPD DB "M","N","O","P","$"
FIRSTD DB ?
SECONDD DB ?

HALFA DB ?
HALFB DB ?
HALFC DB ?
HALFD DB ?

FINALA DB ?
FINALB DB ?

WINNER DB ?
.CODE
    MAIN PROC FAR
    .STARTUP
    LEA DX,MSG1
    CALL   PRINTSTRING
    
    LEA DX,MFRAME
    CALL   PRINTSTRING
    
    CALL    LINE
    
    LEA DX,MSG2
    CALL   PRINTSTRING
    
    CALL    LINE
    
    LEA DX,GROUPS
    CALL   PRINTSTRING
    
    CALL    LINE
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; GROUP ONE ;;;;;;;;;;;;;;;;;;;;;;;
    CALL    LINE
    
    LEA DX,GROUPONE
    CALL   PRINTSTRING
    
    CALL    LINE
    ;;;;;;;; FIRST TEAM GROUP ONE ;;;;;;;;
    LEA DX,FIR
    CALL   PRINTSTRING
    
    CALL   READCHAR
    
    CMP AL,31H
    JE A1
    JNE STOP1
    
    A1:
    MOV DL,GROUPA[0]
    CALL   PRINTCHAR
    MOV CL,GROUPA[0]
    MOV FIRSTA,CL    
    JMP STOPEND1
    
    STOP1:
    CMP AL,32H
    JE A2
    JNE STOP2
    
    A2:
    MOV DL,GROUPA[1]
    CALL   PRINTCHAR
    MOV CL,GROUPA[1]
    MOV FIRSTA,CL 
    JMP STOPEND1

    STOP2:
    CMP AL,33H
    JE A3
    JNE STOP3
    
    A3:
    MOV DL,GROUPA[2]
    CALL   PRINTCHAR
    MOV CL,GROUPA[2]
    MOV FIRSTA,CL     
    JMP STOPEND1
    
    STOP3:
    CMP AL,34H
    JE A4
    
    A4:
    MOV DL,GROUPA[3]
    CALL   PRINTCHAR
    MOV CL,GROUPA[3]
    MOV FIRSTA,CL 
    
    STOPEND1:
    ;;;;;;;; SECOND TEAM GROUP ONE ;;;;;;;;
    LEA DX,SEC
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE A5
    JNE STOP4
    
    A5:
    MOV DL,GROUPA[0]
    CALL   PRINTCHAR
    MOV CL,GROUPA[0]
    MOV SECONDA,CL 
    JMP STOPEND2
    
    STOP4:
    CMP AL,32H
    JE A6
    JNE STOP5
    
    A6:
    MOV DL,GROUPA[1]
    CALL   PRINTCHAR
    MOV CL,GROUPA[1]
    MOV SECONDA,CL 
    JMP STOPEND2
    
    STOP5:
    CMP AL,33H
    JE A7
    JNE STOP6
    
    A7:
    MOV DL,GROUPA[2]
    CALL   PRINTCHAR
    MOV CL,GROUPA[2]
    MOV SECONDA,CL 
    JMP STOPEND2
    
    STOP6:
    CMP AL,34H
    JE A8
    
    A8:
    MOV DL,GROUPA[3]
    CALL   PRINTCHAR
    MOV CL,GROUPA[3]
    MOV SECONDA,CL 

    STOPEND2:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; GROUP TWO ;;;;;;;;;;;;;;;;;;;;;;;
    CALL    LINE
    
    LEA DX,GROUPTWO
    CALL   PRINTSTRING
    
    CALL    LINE
    ;;;;;;;; FIRST TEAM GROUP TWO ;;;;;;;;
    LEA DX,FIR
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE B1
    JNE STOP7
    
    B1:
    MOV DL,GROUPB[0]
    CALL   PRINTCHAR
    MOV CL,GROUPB[0]
    MOV FIRSTB,CL    
    JMP STOPEND3
    
    STOP7:
    CMP AL,32H
    JE B2
    JNE STOP8
    
    B2:
    MOV DL,GROUPB[1]
    CALL   PRINTCHAR
    MOV CL,GROUPB[1]
    MOV FIRSTB,CL 
    JMP STOPEND3
    
    STOP8:
    CMP AL,33H
    JE B3
    JNE STOP9
    
    B3:
    MOV DL,GROUPB[2]
    CALL   PRINTCHAR
    MOV CL,GROUPB[2]
    MOV FIRSTB,CL     
    JMP STOPEND3
    
    STOP9:
    CMP AL,34H
    JE B4
    B4:
    MOV DL,GROUPB[3]
    CALL   PRINTCHAR
    MOV CL,GROUPB[3]
    MOV FIRSTB,CL 
    
    STOPEND3:
    ;;;;;;;; SECOND TEAM GROUP TWO ;;;;;;;;
    LEA DX,SEC
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE B5
    JNE STOP10
    
    B5:
    MOV DL,GROUPB[0]
    CALL   PRINTCHAR
    MOV CL,GROUPB[0]
    MOV SECONDB,CL    
    JMP STOPEND4
    
    STOP10:
    CMP AL,32H
    JE B6
    JNE STOP11
    
    B6:
    MOV DL,GROUPB[1]
    CALL   PRINTCHAR
    MOV CL,GROUPB[1]
    MOV SECONDB,CL 
    JMP STOPEND4
    
    STOP11:
    CMP AL,33H
    JE B7
    JNE STOP12
    
    B7:
    MOV DL,GROUPB[2]
    CALL   PRINTCHAR
    MOV CL,GROUPB[2]
    MOV SECONDB,CL     
    JMP STOPEND4
    
    STOP12:
    CMP AL,34H
    JE B8
    
    B8:
    MOV DL,GROUPB[3]
    CALL   PRINTCHAR
    MOV CL,GROUPB[3]
    MOV SECONDB,CL 
    
    STOPEND4:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; GROUP THREE ;;;;;;;;;;;;;;;;;;;;;;;
    CALL    LINE
    
    LEA DX,GROUPTHREE
    CALL   PRINTSTRING
    
    CALL    LINE
    ;;;;;;;; FIRST TEAM GROUP THREE ;;;;;;;;
    LEA DX,FIR
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE C1
    JNE STOP13
    
    C1:
    MOV DL,GROUPC[0]
    CALL   PRINTCHAR
    MOV CL,GROUPC[0]
    MOV FIRSTC,CL    
    JMP STOPEND5
    
    STOP13:
    CMP AL,32H
    JE C2
    JNE STOP14
    
    C2:
    MOV DL,GROUPC[1]
    CALL   PRINTCHAR
    MOV CL,GROUPC[1]
    MOV FIRSTC,CL 
    JMP STOPEND5

    
    STOP14:
    CMP AL,33H
    JE C3
    JNE STOP15
    
    C3:
    MOV DL,GROUPC[2]
    CALL   PRINTCHAR
    MOV CL,GROUPC[2]
    MOV FIRSTC,CL     
    JMP STOPEND5
    
    STOP15:
    CMP AL,34H
    JE C4
    
    C4:
    MOV DL,GROUPC[3]
    CALL   PRINTCHAR
    MOV CL,GROUPC[3]
    MOV FIRSTC,CL 
    
    STOPEND5:
    ;;;;;;;; SECOND TEAM GROUP THREE ;;;;;;;;
    LEA DX,SEC
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE C5
    JNE STOP16
    
    C5:
    MOV DL,GROUPC[0]
    CALL   PRINTCHAR
    MOV CL,GROUPC[0]
    MOV SECONDC,CL    
    JMP STOPEND6
    
    STOP16:
    CMP AL,32H
    JE C6
    JNE STOP17
    
    C6:
    MOV DL,GROUPC[1]
    CALL   PRINTCHAR
    MOV CL,GROUPC[1]
    MOV SECONDC,CL 
    JMP STOPEND6

    
    STOP17:
    CMP AL,33H
    JE C7
    JNE STOP18
    
    C7:
    MOV DL,GROUPC[2]
    CALL   PRINTCHAR
    MOV CL,GROUPC[2]
    MOV SECONDC,CL     
    JMP STOPEND6
    
    STOP18:
    CMP AL,34H
    JE C8
    
    C8:
    MOV DL,GROUPC[3]
    CALL   PRINTCHAR
    MOV CL,GROUPC[3]
    MOV SECONDC,CL 
    
    STOPEND6:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; GROUP FOUR ;;;;;;;;;;;;;;;;;;;;;;;
    CALL    LINE
    
    LEA DX,GROUPFOUR
    CALL   PRINTSTRING
    
    CALL    LINE
    ;;;;;;;; FIRST TEAM GROUP FOUR ;;;;;;;;
    LEA DX,FIR
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE D1
    JNE STOP19
    
    D1:
    MOV DL,GROUPD[0]
    CALL   PRINTCHAR
    MOV CL,GROUPD[0]
    MOV FIRSTD,CL    
    JMP STOPEND7
    
    STOP19:
    CMP AL,32H
    JE D2
    JNE STOP20
    
    D2:
    MOV DL,GROUPD[1]
    CALL   PRINTCHAR
    MOV CL,GROUPD[1]
    MOV FIRSTD,CL 
    JMP STOPEND7

    STOP20:
    CMP AL,33H
    JE D3
    JNE STOP21
    
    D3:
    MOV DL,GROUPD[2]
    CALL   PRINTCHAR
    MOV CL,GROUPD[2]
    MOV FIRSTD,CL     
    JMP STOPEND7
    
    STOP21:
    CMP AL,34H
    JE D4
    D4:
    MOV DL,GROUPD[3]
    CALL   PRINTCHAR
    MOV CL,GROUPD[3]
    MOV FIRSTD,CL 
    
    STOPEND7:
    ;;;;;;;; SECOND TEAM GROUP FOUR ;;;;;;;;
    LEA DX,SEC
    CALL   PRINTSTRING
    
    CALL   READCHAR

    CMP AL,31H
    JE D5
    JNE STOP22
    
    D5:
    MOV DL,GROUPD[0]
    CALL   PRINTCHAR
    MOV CL,GROUPD[0]
    MOV SECONDD,CL    
    JMP STOPEND8
    
    STOP22:
    CMP AL,32H
    JE D6
    JNE STOP23
    
    D6:
    MOV DL,GROUPD[1]
    CALL   PRINTCHAR
    MOV CL,GROUPD[1]
    MOV SECONDD,CL 
    JMP STOPEND8

    
    STOP23:
    CMP AL,33H
    JE D7
    JNE STOP24
    
    D7:
    MOV DL,GROUPD[2]
    CALL   PRINTCHAR
    MOV CL,GROUPD[2]
    MOV SECONDD,CL     
    JMP STOPEND8
    
    STOP24:
    CMP AL,34H
    JE D8
    D8:
    MOV DL,GROUPD[3]
    CALL   PRINTCHAR
    MOV CL,GROUPD[3]
    MOV SECONDD,CL 
    
    STOPEND8:
    
    CALL    LINE
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; QUARTER FINAL ;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;; FIRST MATCH ;;;;;;;;
    CALL    LINE
    
    LEA DX,QUARTAR
    CALL   PRINTSTRING
    
    CALL    LINE
    
    CALL    LINE
    
    MOV DL,FIRSTA
    CALL   PRINTCHAR 
     
    LEA DX,MSG3
    CALL   PRINTSTRING
     
    MOV DL,SECONDB
    CALL   PRINTCHAR 
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING  
     
    CALL   READCHAR
    
    CMP AL,31H
    JE WW1
    JNE ZZ1
    
    WW1:
    MOV CL,FIRSTA
    MOV HALFA,CL 
    JMP GO1
    
    ZZ1:
    MOV CL,SECONDB
    MOV HALFA,CL 
    
    GO1:
    MOV DL,HALFA
    CALL   PRINTCHAR
    ;;;;;;;; SECOND MATCH ;;;;;;;;
    CALL    LINE
     
    MOV DL,FIRSTB
    CALL   PRINTCHAR
     
    LEA DX,MSG3
    CALL   PRINTSTRING 
     
    MOV DL,SECONDA
    CALL   PRINTCHAR 
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING 
     
    CALL   READCHAR
    
    CMP AL,31H
    JE WW2
    JNE ZZ2
    
    WW2:
    MOV CL,FIRSTB
    MOV HALFB,CL 
    JMP GO2
    
    ZZ2:
    MOV CL,SECONDA
    MOV HALFB,CL 
    
    GO2:
    MOV DL,HALFB
    CALL   PRINTCHAR
    ;;;;;;;; THIRD MATCH ;;;;;;;;
    CALL    LINE
     
    MOV DL,FIRSTC
    CALL   PRINTCHAR 
     
    LEA DX,MSG3
    CALL   PRINTSTRING
     
    MOV DL,SECONDD
    CALL   PRINTCHAR 
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING  
     
    CALL    READCHAR
    
    CMP AL,31H
    JE WW3
    JNE ZZ3
    
    WW3:
    MOV CL,FIRSTC
    MOV HALFC,CL 
    JMP GO3
    
    ZZ3:
    MOV CL,SECONDD
    MOV HALFC,CL 
    
    GO3:
    MOV DL,HALFC
    CALL   PRINTCHAR
    ;;;;;;;; FORTH MATCH ;;;;;;;;
    CALL    LINE
     
    MOV DL,FIRSTD
    CALL   PRINTCHAR 
     
    LEA DX,MSG3
    CALL   PRINTSTRING
     
    MOV DL,SECONDC
    CALL   PRINTCHAR 
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING 
     
    CALL   READCHAR
    
    CMP AL,31H
    JE WW4
    JNE ZZ4
    
    WW4:
    MOV CL,FIRSTD
    MOV HALFD,CL 
    JMP GO4
    
    ZZ4:
    MOV CL,SECONDC
    MOV HALFD,CL 
    
    GO4:
    MOV DL,HALFD
    CALL   PRINTCHAR
    
    CALL    LINE
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;; SEMI FINAL ;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;; FIRST MATCH ;;;;;;;;
    CALL    LINE
    
    LEA DX,SEMI
    CALL   PRINTSTRING
    
    CALL    LINE
    
    CALL    LINE
     
    MOV DL,HALFA
    CALL   PRINTCHAR
     
    LEA DX,MSG3
    CALL   PRINTSTRING
     
    MOV DL,HALFB
    CALL   PRINTCHAR
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING  
     
    CALL   READCHAR
    
    CMP AL,31H
    JE EE1
    JNE QQ1
    
    EE1:
    MOV CL,HALFA
    MOV FINALA,CL 
    JMP RUN1
    
    QQ1:
    MOV CL,HALFB
    MOV FINALA,CL 
    
    RUN1:
    MOV DL,FINALA
    CALL   PRINTCHAR
    ;;;;;;;; SECOND MATCH ;;;;;;;;
    CALL    LINE
     
    MOV DL,HALFC
    CALL   PRINTCHAR
     
    LEA DX,MSG3
    CALL   PRINTSTRING
     
    MOV DL,HALFD
    CALL   PRINTCHAR
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING 
     
    CALL   READCHAR
    
    CMP AL,31H
    JE EE2
    JNE QQ2
    
    EE2:
    MOV CL,HALFC
    MOV FINALB,CL 
    JMP RUN2
    
    QQ2:
    MOV CL,HALFD
    MOV FINALB,CL 
    
    RUN2:
    MOV DL,FINALB
    CALL   PRINTCHAR
    
    CALL    LINE
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
    ;;;;;;;;;;;;;;;;;;;; FINAL ;;;;;;;;;;;;;;;;;;;;;;;
    CALL    LINE
    
    LEA DX,FINAL
    CALL   PRINTSTRING
    
    CALL    LINE
    
    CALL    LINE
     
    MOV DL,FINALA
    CALL   PRINTCHAR
     
    LEA DX,MSG3
    CALL   PRINTSTRING 
     
    MOV DL,FINALB
    CALL   PRINTCHAR
     
    CALL    LINE
        
    LEA DX,MSG4
    CALL   PRINTSTRING 
     
    CALL   READCHAR
    ;CALL   LINE
    
    
    CMP AL,31H
    JE E
    JNE Q
    
    E:
    MOV CL,FINALA
    MOV WINNER,CL 
    JMP R
    
    Q:
    MOV CL,FINALB
    MOV WINNER,CL 
    
    R:
    LEA DX,FRAME
    CALL   PRINTSTRING
    
    CALL   LINE
    
    LEA DX,MSG5
    CALL   PRINTSTRING
    
    
    MOV DL,WINNER
    CALL   PRINTCHAR
    
    CALL   LINE 
    
    LEA DX,FRAME
    CALL   PRINTSTRING 
    
    .EXIT
    MAIN ENDP
    
   ;;;;;;;;;;;;;;;;;;;; 
    LINE PROC NEAR
        MOV AH,02H
        MOV DL,10
        INT 21H
        RET
    LINE ENDP
    
    READCHAR PROC NEAR
        MOV AH,01H
        INT 21H
        RET
    READCHAR ENDP
        
    PRINTCHAR PROC NEAR
        MOV AH,02H
        INT 21H
        RET
    PRINTCHAR ENDP
    
    PRINTSTRING PROC NEAR
        MOV AH,09H
        INT 21H
        RET
    PRINTSTRING ENDP 
    
    
END MAIN    