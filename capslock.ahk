; --------------------------------------------------------------
; notes
; --------------------------------------------------------------
; ! = alt
; ^ = ctrl
; + = shift
; # = lwin|rwin

SetCapsLockState "AlwaysOff"
CapsLock & Space:: {
  CapslockState := GetKeyState("CapsLock", "T")
  if CapslockState = 1
    SetCapsLockState "AlwaysOff"
  else
    SetCapsLockState "AlwaysOn"
  return
  ;KeyWait "``"
}
;caps->esc   
; CapsLock::send "{Esc}"

#HotIf GetKeyState("CapsLock", "P")

; ;Navigation
h::send "{Blind}{Left}"
j::send "{Blind}{Down}"
k::send "{Blind}{Up}"
l::send "{Blind}{Right}"
u::send "{Blind}{PgDn}"
i::send "{Blind}{Home}"
o::send "{Blind}{End}"
p::send "{Blind}{PgUp}"
f::send "{Blind}^{Right}"
b::send "{Blind}^{Left}"
Enter::send "{Blind}{End}{Enter}"

; Tab/Window
a::send "{Blind}^+{Tab}"
d::send "{Blind}^{Tab}"
q::send "{Blind}!{F4}"
w::send "{Blind}^w"
e::send "{Blind}#e"
s::send "{Blind}^!s"
Tab::send "!{Esc}"
!Tab::send "!+{Esc}"

c::send "{Blind}^{Insert}"
v::send "{Blind}+{Insert}"
r::Reload()

; quick run apps

1::
{
  if WinExist("ahk_exe chrome.exe")
    WinActivate() and WinMoveTop()
  else
    run("C:\Program Files\Google\Chrome\Application\chrome.exe")
    WinWait("ahk_exe chrome.exe") 
    WinActivate()
}

2::
{
  if WinExist("ahk_exe obsidian.exe")
    WinActivate() and WinMoveTop()
  else
    run("C:\Users\xuwei\Scoop\apps\obsidian\1.3.5\Obsidian.exe")
    WinWait("ahk_exe obsidian.exe") 
    WinActivate()
}

3::
{
  if WinExist("ahk_exe ChatGPT Next Web.exe")
    WinActivate() and WinMoveTop()
  else
    run("C:\Users\xuwei\AppData\Local\ChatGPT Next Web\ChatGPT Next Web.exe")
    WinWait("ahk_exe ChatGPT Next Web.exe") 
    WinActivate()
    send "#{Right}"
    send "Esc"
}

; ;Selection
 <!h::send "^+{Left}"
 <!j::send "^+{Down}"
 <!k::send "^+{Up}"
 <!l::send "^+{Right}"
 <!u::send "+^{Home}"
 <!i::send "+{Home}"
 <!o::send "+{End}"
 <!p::send "^+{End}"

 ;Tab/Window
 +h::send "^+{Tab}"
 +j::send "!{Esc}"
 +k::send "!+{Esc}"
 +l::send "^{Tab}"
 +i::send "#+{Left}"
 +o::send "#+{Right}"

 ;shift +u/i/o/p
 ;Deletion
 n::
 {
   if WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
     send "^w"
   else
     Send "^{BS}"
 }


 !n::send "^+{BackSpace}"
 ^n::send "{End}^+{BackSpace}"
 m::send "{BackSpace}"
 !m::send "^{BackSpace}"
 ,::send "{Delete}"
 !,::send "^{Delete}"
 .::send "^{Del}"
 !.::send "^+{Del}"
 ^.::send "{End}^+{BackSpace}"
 ;Backspace can't use in windows
 !BackSpace::send "^a{BackSpace}"

 ^^::send "^!+R"
 Space::send "{Enter}"

 return
