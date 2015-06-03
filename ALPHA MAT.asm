;delay of 5 cycles

JMP MAIN

DELAY:
   NOP
RET

CLEAR:
  MOVW 0X00
  MOVWR PORTB
RET

FIRSTCOLUMN:
  MOVW 0X7F
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

MIDDLETHREE:
  MOVW 0X49
  MOVWR PORTA
  MOVW 0X0E
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

LANDR:
  MOVW 0X7F
  MOVWR PORTA
  MOVW 0X11
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETA:
  MOVW 0x7E
  MOVWR PORTA
  MOVW 0X11
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X11
  MOVWR PORTA
  MOVW 0X0E
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETB:
  CALL FIRSTCOLUMN

  

  MOVW 0X36
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETC:
 MOVW 0X3E
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X0e
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X22
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETD:
  CALL FIRSTCOLUMN

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X06
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X22
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTB
  CALL DELAY
  
  CALL CLEAR
 
  MOVW 0X1C
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETE:
  CALL FIRSTCOLUMN

    CALL MIDDLETHREE


  MOVW 0X41
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETF:
  CALL FIRSTCOLUMN

  MOVW 0X9
  MOVWR PORTA
  MOVW 0X0E
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR


  MOVW 0X01
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETG:
  MOVW 0X3E
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X49
  MOVWR PORTA
  MOVW 0XC
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X7A
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET


SETH:
  CALL LANDR

  MOVW 0X08
  MOVWR PORTA
  MOVW 0X0E
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET


SETI:
  MOVW 0X7F
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X0A
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETJ:
  MOVW 0X20
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X40
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X3F
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X01
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETK:
  CALL FIRSTCOLUMN

  MOVW 0X08
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X14
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X22
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X41
  MOVWR PORTA
  MOVW 0X10
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETL:
  CALL FIRSTCOLUMN

  MOVW 0X40
  MOVWR PORTA
  MOVW 0X1E
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

SETM:
  CALL LANDR

  MOVW 0X02
  MOVWR PORTA
  MOVW 0X0A
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR

  MOVW 0X0C
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTB
  CALL DELAY

  CALL CLEAR
RET

MAIN:
  CALL SETA
  CALL SETB
  CALL SETC
  CALL SETD
  CALL SETE
  CALL SETF
  CALL SETG
  CALL SETH
  CALL SETI
  CALL SETJ
  CALL SETK
  CALL SETL
  CALL SETM

  
JMP MAIN
