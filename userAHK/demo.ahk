keyfunc_aa()
{
    msgbox, aa
}

keyfunc_search_google()
{
    ; 获取选中的文字
    selText:=getSelText()
    
    if (!selText) {
        selText := Clipboard
    }
    
    if (!selText) {
        ; 如果文本为空，则返回
        Return
    }
    
    selText := trim(selText)
    if (!URLCheck(selText)) {
        ; 如果不是 url，则使用谷歌搜索
        selText := "https://www.google.com.hk/search?ie=utf-8&q=" . selText
        ; selText := "https://cn.bing.com/search?q=" . selText
    } else if (InStr(selText, "primeledger.cn") Or InStr(selText, "xip.io") Or InStr(selText, "stacs.cn")) {
        EnvGet, userHome, userprofile ; 获取用户目录
        operaPath := userHome . "\AppData\Local\Programs\Opera\launcher.exe"
        if FileExist(operaPath) {
            Run, %operaPath% %selText%
        } else {
            alert("Opera cannot find")
        }
        Return
    }
    
    ; 访问页面
    Run, %selText%
}