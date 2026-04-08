#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%


F1::
;first jump
    Send, {Space down}   ;press cross
    Sleep, 420

    Send, {Space up}     ;release cross
    Sleep, 33

;air kick
    Send, {s down}       ;press down
    Sleep, 100

    Send, {d down}       ;press forward
    Sleep, 67

    Send, {s up}         ;release down
    Sleep, 33

    Send, {LButton down} ;press square
    Sleep, 250

    Send, {LButton up}   ;release square
;reduce this time for heights
;    Sleep, 333
    Sleep, 100

;jump cancel
    Send, {q down}       ;press R1
    Sleep, 100

    Send, {q up}         ;release R1
    Sleep, 33

    Send, {MButton down} ;press R2
    Sleep, 33

    Send, {Space down}   ;press cross
    Sleep, 33

    Send, {LButton down} ;press square
    Sleep, 350

    Send, {MButton up}   ;release R2
    Sleep, 33

    Send, {Space up}     ;release cross
    Sleep, 33

    Send, {LButton up}   ;release square
;    Sleep, 150
    Sleep, 66

    Send, {d up}         ;release forward
    Sleep, 33

;air kick
    Send, {s down}       ;press down
    Sleep, 100

    Send, {d down}       ;press forward
    Sleep, 67

    Send, {s up}         ;release down
    Sleep, 33

    Send, {LButton down} ;press square
    Sleep, 250

    Send, {LButton up}   ;release square
;reduce this time for heights
;    Sleep, 333
    Sleep, 100

;jump cancel
    Send, {q down}       ;press R1
    Sleep, 100

    Send, {q up}         ;release R1
    Sleep, 33

    Send, {MButton down} ;press R2
    Sleep, 33

    Send, {Space down}   ;press cross
    Sleep, 33

    Send, {LButton down} ;press square
    Sleep, 350

    Send, {MButton up}   ;release R2
    Sleep, 33

    Send, {Space up}     ;release cross
    Sleep, 33

    Send, {LButton up}   ;release square
    Sleep, 150

    Send, {d up}
return
