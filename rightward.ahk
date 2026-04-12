#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

first_jump() {
    Send, {Space down}   ;press cross
    Sleep, 430

    Send, {Space up}     ;release cross
    Sleep, 20
}

air_kick() {
    Send, {s down}       ;press down
    Sleep, 100

    Send, {d down}       ;press right
    Sleep, 33

    Send, {s up}         ;release down
    Sleep, 100

    Send, {LButton down} ;press square
    Sleep, 167

    Send, {d up}         ;release right
    Sleep, 33
    Send, {LButton up}   ;release square
    Sleep, 333
}

jump_cancel() {
    Send, {q down}       ;press R1
    Sleep, 100

    Send, {q up}         ;release R1
    Sleep, 20

    Send, {MButton down} ;press R2
    Sleep, 20

    Send, {d down}       ;press right
    Sleep, 20

    Send, {Space down}   ;press cross
    Sleep, 20

    Send, {LButton down} ;press square
    Sleep, 250

    Send, {MButton up}   ;release R2
    Sleep, 100

    Send, {Space up}     ;release cross
    Sleep, 20

    Send, {LButton up}   ;release square
    Sleep, 20

    Send, {d up}         ;release right
    Sleep, 33
}

F1::
    first_jump()
    air_kick()
    jump_cancel()
    air_kick()
    jump_cancel()
    air_kick()
    jump_cancel()
    air_kick()
    jump_cancel()

return
