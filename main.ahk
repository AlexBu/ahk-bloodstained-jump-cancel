#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

first_jump() {
    Send, {Space down}   ;press cross
    Sleep, 430

    Send, {Space up}     ;release cross
    Sleep, 20
}

air_kick(key, delay :=333) {
    Send, {s down}       ;press down
    Sleep, 100

    Send, {%key% down}       ;press left
    Sleep, 33

    Send, {s up}         ;release down
    Sleep, 100

    Send, {LButton down} ;press square
    Sleep, 167

    Send, {%key% up}         ;release left
    Sleep, 33
    Send, {LButton up}   ;release square
    Sleep, %delay%
}

jump_cancel(key) {
    Send, {q down}       ;press R1
    Sleep, 100

    Send, {q up}         ;release R1
    Sleep, 20

    Send, {MButton down} ;press R2
    Sleep, 20

    Send, {%key% down}       ;press left
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

    Send, {%key% up}         ;release left
    Sleep, 33
}

F1::
    first_jump()
    Loop, 4 {
        air_kick("a")
        jump_cancel("a")
    }

return

F2::
    first_jump()
    Loop, 4 {
        air_kick("d")
        jump_cancel("d")
    }

return

F3::
    first_jump()
    Loop, 4 {
        air_kick("a", 100)
        jump_cancel("w")
    }

return

Esc::
    Reload
return