; Type your assembly code here.
; Click A or press F8 to assemble the code.
; Click S to Step or Increase-Clock-Rate

MOVW 0x01
MOVWR TRISC

MOVW 0X00
MOVWR TRISB

JMP OFFPOLL

ONPOLL:
  MOVRW PORTC
  XORW 0X00
  JPZ OFF
  JMP ONPOLL

OFFPOLL:
  MOVRW PORTC
  XORW 0X01
  JPZ ON
  JMP OFFPOLL

ON:
  CALL DELAY
  MOVW 0X01
  MOVWR PORTB
  JMP ONPOLL

OFF:
  MOVW 0X00
  MOVWR PORTB
  JMP OFFPOLL

DELAY:
  MOVW 0X07
DELAYLOOP:
  SUBW 0X01
  JPZ DELAYEND
  JMP DELAYLOOP
DELAYEND:
  RET
