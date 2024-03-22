 ;无环境变量
#NoEnv
 
SetCapsLockState, AlwaysOff  
SetStoreCapslockMode,Off
 
;高进程
Process Priority,,High

CapsLock::
KeyWait, CapsLock, T0.3
If ErrorLevel {
    SetCapsLockState, On
    KeyWait, CapsLock
} else {
    Send, {ctrl down}{space}{ctrl up}
}
Return

Shift::
SetCapsLockState, Off
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
