#SingleInstance Force ;only one instance of this script may run at a time!
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm ;prevent taskbar flashing.
#Requires AutoHotkey v2.0

; { \\ #Includes
#Include '%A_Appdata%\tomshi\lib'
#Include Classes\ptf.ahk
#Include Functions\trayShortcut.ahk
;there are more includes down below
; }

SetWorkingDir(ptf.rootDir)
SetDefaultMouseSpeed(0)                 ;sets default MouseMove speed to 0 (instant)
SetWinDelay(0)                          ;sets default WinMove speed to 0 (instant)
TraySetIcon(ptf.Icons "\keyboard.ico")
startupTray()
;SetCapsLockState("AlwaysOff")          ;having this on broke my main script for whatever reason
;SetNumLockState("AlwaysOn")

;===========================================================================
#HotIf WinActive(editors.Premiere.winTitle) and getKeyState("F24", "P")
#Include QMK\Work\Prem.ahk
;===========================================================================
#HotIf WinActive(editors.AE.winTitle) and getKeyState("F24", "P")
#Include QMK\Work\AE.ahk
;===========================================================================
#HotIf getKeyState("F24", "P") and WinActive(editors.Photoshop.winTitle)
#Include QMK\Work\Photoshop.ahk
;===========================================================================
#HotIf getKeyState("F24", "P") ;these will work everywhere
#Include QMK\Work\Always.ahk
;===========================================================================


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/*
Everything I use so you can easy copy paste for new programs

BackSpace::unassigned()
SC028::unassigned() ; ' key
Enter::unassigned()
;Right::unassigned()

p::unassigned()
SC027::unassigned()
/::unassigned()
;Up::unassigned()

o::unassigned()
l::unassigned()
.::unassigned()
;Down::unassigned()

i::unassigned()
k::unassigned()
,::unassigned()
;Left::unassigned()

u::unassigned()
j::unassigned()
m::unassigned()
;PgUp::unassigned()

y::unassigned()
; h::unassigned()
n::unassigned()
;Space::unassigned()

t::unassigned()
g::unassigned()
b::unassigned()

r::unassigned()
f::unassigned()
v::unassigned()
;PgDn::unassigned()

e::unassigned()
d::unassigned()
c::unassigned()
;End::unassigned()

w::unassigned()
;s::unassigned()
;x::unassigned()
;F15::unassigned()

q::unassigned()
a::unassigned()
z::unassigned()
; F16::unassigned()

;Tab::unassigned()
Esc::unassigned()
F13::unassigned()
Home::unassigned()
 */