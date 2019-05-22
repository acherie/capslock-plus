keyfunc_aa(){
    msgbox, aa
}

keyfunc_search_google() {
    ; 获取选中的文字
    selText:=getSelText()

    if (!selText) {
        selText := Clipboard
    }

    if (!selText) {
        ; 如果文本为空，则返回
        Return
    }

    if (!URLCheck(selText)) {
        ; 如果不是 url，则使用谷歌搜索
        selText := "https://www.google.com.hk/search?ie=utf-8&q=" . selText
    }
    ; 访问页面
    Run, %selText%
}
