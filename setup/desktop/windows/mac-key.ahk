#Requires AutoHotkey v2.0
#SingleInstance Force
F13 & e::Send "{End}"
F13 & a::Send "{Home}"
F13 & f::Send "{Right}"
F13 & b::Send "{Left}"
F13 & p::Send "{Up}"
F13 & n::Send "{Down}"
F13 & d::Send "{Delete}"

vk1D:: {
    if IME_GetStatus() {
        Send("{Enter}")
        Send("{vkF3}")
    } else {
        Send("{vk1D}")
    }
}

IME_GetStatus() {
    hwnd := WinGetID("A")
    defaultIME := DllCall("imm32\ImmGetDefaultIMEWnd", "Ptr", hwnd, "Ptr")
    return DllCall("user32\SendMessage", "Ptr", defaultIME, "UInt", 0x0283, "Ptr", 0x0005, "Ptr", 0, "Ptr")
}