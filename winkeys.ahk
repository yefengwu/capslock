; switch ime
^Space::send "{Blind}#{Space}"

TabCloseApps := [
  "ahk_class ATLWIN_JISUPDF_MIAN"
]

for i in TabCloseApps
  GroupAdd("TabClose", i)

!w::
{
  if WinActive("ahk_group TabClose")
    SendInput "^w"
  else
    send "^{F4}"
}

!q::
{
  if WinActive("ahk_class si4_Frame")
  {
    ;WinHide("ahk_class OlkWV2Frame")
    SendInput "!+{w}"
    Sleep 10
    SendInput "!{F4}"
  }else {
    Send "{Blind}!{F4}"
  }
}

#s::send "^!{s}"
#l::
{
  ProcessClose "chrome.exe"
}

!F1::
{
  CoordMode("Mouse", "Screen")
  MouseGetPos(&xpos, &ypos)
  if (xpos >= 0)
  {
      MouseMove(-850, 1900)
  }else {
    MouseMove(1280, 700)
  }
}

^[::
{
  SendInput("{Esc}")
}


; #1::
; {
;   if WinExist("ahk_exe chrome.exe")
;     WinActivate() and WinMoveTop()
;   else
;     run("C:\Program Files\Google\Chrome\Application\chrome.exe")
;     WinWait("ahk_exe chrome.exe") 
;     WinActivate()
; }
;
; #2::
; {
;   if WinExist("ahk_exe obsidian.exe")
;     WinActivate() and WinMoveTop()
;   else
;     run("C:\Users\xuwei\AppData\Local\Obsidian\Obsidian.exe")
;     WinWait("ahk_exe obsidian.exe") 
;     WinActivate()
;
; }

!Enter::
{
  if WinExist("ahk_exe WindowsTerminal.exe")
    WinActivate() and WinMoveTop()
  else 
    run("C:\Users\xuwei\Scoop\apps\windows-terminal-preview\current\WindowsTerminal.exe") 
    WinWait("ahk_exe WindowsTerminal.exe") 
    WinActivate()
}


;Functional
F7::send  "{Blind}^!{Left}"
F8::send  "{Blind}^!{F5}"
F9::send  "{Blind}^!{Right}"
F10::send "{Blind}{Volume_Mute}"
F11::send "{Blind}{Volume_Down}"
F12::send "{Blind}{Volume_Up}"

