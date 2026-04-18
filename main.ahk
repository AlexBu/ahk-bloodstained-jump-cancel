#NoEnv
#SingleInstance
SendMode Input
SetWorkingDir %A_ScriptDir%

first_jump(key :="w") {
    Send, {Space down}   ;press cross
    Sleep, 33

    Send, {%key% down}   ;press direction
    Sleep, 380

    Send, {%key% up}     ;release direction
    Sleep, 20

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

;F1: move left
;F2: move right
;F3: move upward while facing left
;F4: move upward while facing right

;move left
F1::
    first_jump("a")
    Loop {
        air_kick("a")
        jump_cancel("a")
        if GetKeyState("F5", "P")
            break
    }

return

;move right

;F6: change direction to left
;F7: change direction to right
;F5: stop

F2::
    Dir2 := "d"
    first_jump("d")
    Loop {
        air_kick(Dir2)
        jump_cancel(Dir2)
        air_kick(Dir2)
        jump_cancel(Dir2)
        if GetKeyState("F6", "P") {
            Dir2 := "a"
        } else if GetKeyState("F7", "P") {
            Dir2 := "d"
        } else if GetKeyState("F5", "P") {
            break
        } else {
            ;
        }
    }

return

;move upward while facing left
F3::
    first_jump()
    Loop {
        air_kick("a", 100)
        jump_cancel("w")
        if GetKeyState("F5", "P")
            break
    }

return

;move upward while facing right
F4::
    first_jump()
    Loop {
        air_kick("d", 100)
        jump_cancel("w")
        if GetKeyState("F5", "P")
            break
    }

return
