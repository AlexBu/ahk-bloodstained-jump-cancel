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

jump_combo(Dir, delay) {
    first_jump(Dir)
    Loop {
        air_kick(Dir, delay)
        jump_cancel(Dir)
        if GetKeyState("F6", "P")
            Dir := "a"
        if GetKeyState("F7", "P")
            Dir := "d"
        if GetKeyState("F5", "P")
            break
    }
}

;F1: move left
;F2: move right
;F3: move upward while facing left
;F4: move upward while facing right

;move left
F1::
    jump_combo("a", 333)
return

;move right

;F6: change direction to left
;F7: change direction to right
;F5: stop

F2::
    jump_combo("d", 333)
return

;move upward while facing left
F3::
    jump_combo("a", 100)
return

;move upward while facing right
F4::
    jump_combo("d", 100)
return
