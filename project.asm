dosseg
.model small
.stack 100h
.data
msg0 db 'This Project Is Made By',0ah,0dh, 'Abdul Rehman',0ah,0dh, 'Abdul Wahab',0ah,0dh, 'Aarish Hussain',0ah,0dh,'Muhammad Sheheryaar',0ah,0dh, 'Syed Muhammad Faiq$'

design db 10, 13, '=====================*====================$'

msg1 db 10, 13,'Enter 1 For Addition$'
msg2 db 10, 13,'Enter 2 For Subtraction$'
msg5 db 10, 13,'Enter Your Choice: $'
fn db 10, 13, 'Enter FIrst Number: $'
sn db 10, 13, 'Enter Second Number: $'
result db 10, 13, 'The result Is: $'

.code
Main proc
Mov ax, @data
Mov ds, ax

Mov dx, offset msg0
Mov ah, 9
INT 21h

Mov dx, offset design
Mov ah, 9
INT 21h

Mov dx, offset msg1
Mov ah, 9
INT 21h

Mov dx, offset msg2
Mov ah, 9
INT 21h



Mov dx, 13
Mov ah, 2
INT 21h

Mov dx, 10
Mov ah, 2
INT 21h

Mov dx, offset msg5
Mov ah, 9
INT 21h

Mov ah, 1
INT 21h
Mov bh, al
SUB bh, 48

CMP bh, 1
JE COND1

CMP bh, 2
JE COND2



COND1:
Mov dx, offset fn
Mov ah, 9
INT 21h

Mov ah, 1
INT 21h

Mov bl ,al
Mov dx, offset sn
Mov ah, 9
INT 21h

Mov ah, 1
INT 21h
ADD bl, al
SUB bl, 48

Mov dx, offset result
Mov ah, 9
INT 21h
Mov dl, bl
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h

COND2:
Mov dx, offset fn
Mov ah, 9
INT 21h

Mov ah, 1
INT 21h

Mov bl, al
Mov dx, offset sn
Mov ah, 9
INT 21h

Mov ah, 1
INT 21h
SUB bl, al
Add bl, 48



Mov dx, offset result
Mov ah, 9
INT 21h
Mov dl, bl
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h



Main endp
End Main


