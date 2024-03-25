;管理员运行
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%" 
   ExitApp
}

;无环境变量
#NoEnv

;高进程
Process Priority,,High

;一直关闭 Capslock
SetCapsLockState, AlwaysOff  
SetStoreCapslockMode, off

;禁用单击alt
Alt::Return

;禁用单击shift
Shift::Return

CapsLock::
    KeyWait, CapsLock
    If (A_TimeSinceThisHotkey > 300)
    {
        SetTimer, mainp, -1
    } else 
    {
        Send, {ctrl down}{space}{ctrl up}
    }
Return

mainp:
    if GetKeyState("CapsLock", "T")
    {
        SetCapsLockState, Off  ; 如果 CapsLock 键是开启状态，则将其关闭
    }
    else
    {
        SetCapsLockState, On  ; 如果 CapsLock 键是关闭状态，则将其开启
    }
Return

!s::
Send, ^s
Return

!a::
Send, ^a
Return

!c::
Send, ^c
Return

!v::
Send, ^v
Return

!x::
Send, ^x
Return

;撤回
!z::
Send, ^z
Return

;反向撤回
!+z::
Send, ^+z
Return

;关闭窗口
!t::
Send, ^t
Return

;重新打开关闭窗口
!+t::
Send, ^+t
Return

!n::
Send, ^n
Return

!o::
Send, ^o
Return

!p::
Send, ^p
Return

!y::
Send, ^y
Return

!w::
Send, ^w
Return

!q::
Send, ^q
Return

;查找
!f::
Send, ^f
Return

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return

;内置截图
^+!4::
Send, #+s
Return

;强退APP
;!q::
;Send, !F4
;Return

$!Backspace::
    Send {Delete}
Return

$!Left::
    Send {Home}
Return

$!Right::
    Send {End}
Return

$!+Left::
    Send +{Home}
Return

$!+Right::
    Send +{End}
Return

~MButton & XButton1::send #^{Right}
return

~MButton & XButton2::send #^{left}
return

~MButton & RButton::send #^{Right}
return

~MButton & LButton::send #^{left}
return

#IfWinActive ahk_exe Notepad.exe
{
!q::
MsgBox, You pressed Alt+q  in Notepad.
Return
}

#IfWinActive ahk_class CabinetWClass
{
^!q::
MsgBox, You pressed  Ctrl+Alt+q CabinetWClass
Return

![::Send !{Left}
Return

!]::Send !{Right}
Return
}

#IfWinActive ahk_exe chrome.exe
{
![::Send !{Left}
Return

!]::Send !{Right}
Return
}

#IfWinActive