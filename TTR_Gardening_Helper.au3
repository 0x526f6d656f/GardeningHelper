#include <WinAPI.au3>

; Toontown Jellybean Flower Helper

; Variables
Global $game = "Toontown Rewritten"
Global $gameWidth = WinGetClientSize($game)[0]
Global $gameHeight = WinGetClientSize($game)[1]
Global $resolution[2] = ["1600", "900"]

; Bean Positions
Global $plantButton[2] = ["920", "600"]
Global $OKAfterPlantButton[2] = ["800", "570"]

Global $red =     622
Global $green =   667
Global $orange =  712
Global $purple =  757
Global $blue =    802
Global $pink =    847
Global $yellow =  892
Global $cyan =    937
Global $silver =  982

Global $_1BeanCombos[5] = [$green, $orange, $pink, $yellow, $cyan]
Global $_2BeanCombos[5][2] = [[$green, $cyan], _  ;Laff-o-dil
                              [$orange, $cyan], _ ;Dandy Pansy
                              [$pink, $yellow], _ ;What-in Carnation
                              [$yellow, $red], _  ;School Daisy
                              [$cyan, $green]]    ;Lily-of-the-Alley
Global $_3BeanCombos[5][3] = [[$yellow, $red, $green], _ ;Daffy Dill
                              [$orange, $red, $red], _   ;Chim Pansy
                              [$red, $red, $red], _      ;Instant Carnation
                              [$pink, $red, $red], _     ;Lazy Daisy
                              [$cyan, $orange, $orange]] ;Lily Pad
Global $_4BeanCombos[5][4] = [[$yellow, $red, $cyan, $orange], _   ;Freshasa Daisy
                              [$cyan, $orange, $orange, $pink], _  ;Livered Lily
                              [$green, $pink, $yellow, $yellow], _ ;Giraff-o-dil
                              [$orange, $yellow, $yellow, $red], _ ;Marzi Pansy
                              [$red, $yellow, $orange, $yellow]]   ;Corn Rose
Global $_5BeanCombos[5][5] = [[$yellow, $red, $orange, $orange, $orange], _ ;Whoopsie Daisy
                              [$cyan, $red, $red, $red, $red], _            ;Chilli Lily
                              [$purple, $red, $blue, $purple, $purple], _   ;Onelip
                              [$pink, $red, $green, $blue, $red], _         ;Side Carnation
                              [$green, $pink, $blue, $pink, $pink]]         ;Time and half-o-dil
Global $_6BeanCombos[5][6] = [[$cyan, $red, $purple, $purple, $purple, $purple], _ ;Silly Lily
                              [$purple, $red, $red, $red, $purple, $purple], _     ;Twolip
                              [$yellow, $blue, $cyan, $purple, $blue, $blue], _    ;Upsy Daisy
                              [$red, $pink, $orange, $red, $orange, $pink], _      ;Tinted Rose
                              [$orange, $pink, $pink, $orange, $blue, $pink]]      ;Smarty Pansy
Global $_7BeanCombos[5][7] = [[$red, $cyan, $orange, $pink, $purple, $cyan, $cyan], _     ;Stinking Rose
                              [$cyan, $purple, $cyan, $blue, $cyan, $blue, $blue], _      ;Indubitab Lily
                              [$yellow, $green, $red, $orange, $green, $green, $green], _ ;Crazy Daisy
                              [$blue, $purple, $blue, $purple, $cyan, $blue, $blue], _    ;Car Petunia
                              [$pink, $green, $green, $green, $green, $yellow, $green]]   ;Model Carnation
Global $_8BeanCombos[5][8] = [[$red, $blue, $purple, $purple, $blue, $blue, $pink, $blue], _            ;Istilla Rose
                              [$blue, $pink, $pink, $blue, $red, $orange, $yellow, $yellow], _          ;Platoonia
                              [$cyan, $blue, $yellow, $yellow, $cyan, $blue, $yellow, $yellow], _       ;Dilly Lily
                              [$yellow, $blue, $purple, $cyan, $purple, $red, $orange, $purple], _         ;Hazy Daisy
                              [$purple, $yellow, $yellow, $purple, $yellow, $orange, $purple, $yellow]] ;Threelip

; ------------------ Toontown Functions START ------------------
; Gardening Stuff
Func PickFlower()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $x = 56
    $y = 230
    _MouseClickFast($gamePos[0] + $x, $gamePos[1] + $y)
    Sleep(100)
EndFunc

Func WaterFlower()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $x = 56
    $y = 310
    _MouseClickFast($gamePos[0] + $x, $gamePos[1] + $y)
EndFunc

Func Plant1BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_1BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random bean
    _MouseClickFast($gamePos[0] + $_1BeanCombos[$rand], $gamePos[1] + $y)
    Sleep(100)
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant2BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_2BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_2BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_2BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant3BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_3BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_3BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_3BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant4BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_4BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_4BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_4BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant5BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_5BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_5BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_5BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant6BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_6BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_6BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_6BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant7BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_7BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_7BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_7BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc

Func Plant8BeanCombo()
    CenterAndFocusGame()
    $gamePos = WinGetPos($game)
    $rand = Random(0, UBound($_8BeanCombos) - 1)
    $y = 420

    ; Click "Plant Flower"
    PickFlower()
    Sleep(100)
    ; Click random beans
    For $i = 0 To (UBound($_8BeanCombos, 2) - 1)
        _MouseClickFast($gamePos[0] + $_8BeanCombos[$rand][$i], $gamePos[1] + $y)
        Sleep(100)
    Next
    ; Click "Plant" button
    _MouseClickFast($gamePos[0] + $plantButton[0], $gamePos[1] + $plantButton[1])
    Sleep(5700)
    ; Click "OK" button
    _MouseClickFast($gamePos[0] + $OKAfterPlantButton[0], $gamePos[1] + $OKAfterPlantButton[1])
    Sleep(100)
EndFunc
; ------------------ Toontown Functions END ------------------

; ------------------ System Stuff START ------------------
; Put TTR in front
Func PutTTRInFront()
    If not WinActive("Toontown Rewritten") then
        WinActivate("Toontown Rewritten")
        ConsoleWrite("Put TTR in front")
    EndIf
EndFunc

; Fast Mouse Clicker
Func _MouseClickFast($x, $y)
    $x = $x*65535/@DesktopWidth
    $y = $y*65535/@DesktopHeight

    _WinAPI_Mouse_Event(BitOR($MOUSEEVENTF_ABSOLUTE, $MOUSEEVENTF_MOVE), $x, $y)
    _WinAPI_Mouse_Event(BitOR($MOUSEEVENTF_ABSOLUTE, $MOUSEEVENTF_LEFTDOWN), $x, $y)
    _WinAPI_Mouse_Event(BitOR($MOUSEEVENTF_ABSOLUTE, $MOUSEEVENTF_LEFTUP), $x, $y)
EndFunc 

; Center Window
Func CenterAndFocusGame()
    PutTTRInFront()
    WinMove($game, "", @DesktopWidth / 2 - $resolution[0] / 2, @DesktopHeight / 2 - $resolution[1] / 2, $resolution[0], $resolution[1])
EndFunc
; ------------------ System Stuff END ------------------

; Hotkeys SET
Func SetHotkeys()
    HotKeySet("{NUMPAD0}", "PickFlower")
    HotKeySet("{NUMPADADD}", "WaterFlower")
    HotKeySet("{NUMPAD1}", "Plant1BeanCombo")
    HotKeySet("{NUMPAD2}", "Plant2BeanCombo")
    HotKeySet("{NUMPAD3}", "Plant3BeanCombo")
    HotKeySet("{NUMPAD4}", "Plant4BeanCombo")
    HotKeySet("{NUMPAD5}", "Plant5BeanCombo")
    HotKeySet("{NUMPAD6}", "Plant6BeanCombo")
    HotKeySet("{NUMPAD7}", "Plant7BeanCombo")
    HotKeySet("{NUMPAD8}", "Plant8BeanCombo")
EndFunc

; Unset Hotkeys
Func UnsetHotkeys()
    HotKeySet("{NUMPAD0}")
    HotKeySet("{NUMPADADD}")
    HotKeySet("{NUMPAD1}")
    HotKeySet("{NUMPAD2}")
    HotKeySet("{NUMPAD3}")
    HotKeySet("{NUMPAD4}")
    HotKeySet("{NUMPAD5}")
    HotKeySet("{NUMPAD6}")
    HotKeySet("{NUMPAD7}")
    HotKeySet("{NUMPAD8}")
EndFunc


; Keep Script Alive
While 1;loop forever
    if WinActive($game) then
        SetHotkeys()
    Else
        UnsetHotkeys()
    EndIf
    Sleep(100)
WEnd