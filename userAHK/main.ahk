; 1. Include the .ahk file(s) containing custom key functions here,
;   or just put the functions here.
;   * A key function must start with "keyFunc_" (case insensitive)

; 2. Add a setting under the [Keys] section in `CapsLock+settings.ini`

; Example:
; 1. There is a key function `keyFunc_example2` in demo.ahk.
; 2. Add below setting under the [Keys] section in `CapsLock+settings.ini`:
;   caps_f7=keyFunc_example2
; 3. Save, reload Capslock+ (CapsLock+F5)
; 4. Press `CapsLock+F7` to invoke the function

#include demo.ahk

; 关闭大小写切换功能
SetCapsLockState, Off

keyfunc_listary()
{
    ; 获取选中的文字
    selText:=getSelText()
    
    ; 发送 win+` 按键（Listary的呼出快捷键），呼出Listary
    sendinput, #n
    
    ; 等待 Listary 输入框打开
    winwait, ahk_exe Listary.exe, , 0.5
    
    ; 如果有选中文字的话
    if(selText) {
        ; 如果文字过长，则截断
        if (StrLen(selText) > 20) {
            selText := SubStr(selText, 1, 20)
        }
        ; 在选中的字前面加上"g "（因为谷歌搜索是我最常用的，你也可以不加）
        selText:="g " . selText
        ; 输出刚才复制的文字，并按一下`home`键将光标移到开头，以方便加入其它关键词
        sendinput, %selText%{home}{Right}
    }
}

; Windows and W closes active window
#w::Send, !{F4}

#c::
try
    keyfunc_search_google()
return

::i22::ISO20022
/*
不打算修改程序本身，只想为某个按键实现功能的话，可以在这里：
1. 添加 keyfunc_xxxx() 的函数，
2. 在 Capslock+settings.ini [keys]下添加设置，
例如按下面这样写，然后添加设置：caps_f7=keyFunc_test2(apple)
3. 保存，重载 capslock+ (capslock+F5)
4. 按下 capslock+F7 试试
************************************************/

keyfunc_test2(str)
{
    msgbox, % str
    return
}
