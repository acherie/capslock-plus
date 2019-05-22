# 搜索引擎

```
b|吧|把|ba|bd|baidu|Baidu|百度: https://www.baidu.com/s?ie=utf-8&wd=$s blank=https://www.baidu.com
bi: https://cn.bing.com/search?q=$s
bi|必应: https://www.bing.com/search?q=$s blank=https://cn.bing.com/
bing: . www.bing.com/dict/ re=/^([^\/]+)\/?$/
bing: . www.bing.com/dict/ re=/^(?:search|dict|)?[#&?]q=([^#&]*)/i
bing: . cn.bing.com/dict/ re=/^([^\/]+)\/?$/
bing: . cn.bing.com/dict/ re=/^(?:search|dict|)?[#&?]q=([^#&]*)/i
bing|d|bign|di|dict|并|词典|必应词典: https://cn.bing.com/dict/?q=$s re=
w.e: http://en.wikipedia.org/wiki/$s{_}
w.e|wiki.en|en.wiki|e.w: \
  https://en.wikipedia.org/w/index.php?title=Special:Search&search=$s \
  Wikipedia (en-US)
m|百度Wap|Wap百度|没|吗|wap|m.b|m.baidu|wap.baidu: \
  http://m.baidu.com/pu=sz%401328_100/s?word=$s \
  m.baidu.com/ re=/\/s\?(?:word=|.*?\&word=)([^#&]*)/i \
  百度 Wap
b.i|b.image|image: http://image.baidu.com/search/index?tn=baiduimage&ie=utf-8&word=$s \
  百度图片
b.t|t.b|tieba|贴吧|贴: http://tieba.baidu.com/f?kw=$s 百度贴吧
g|gg|ggg|Google|google|个: https://www.google.com.hk/search?ie=utf-8&q=$s \
  www.google.com re=/^(?:\.[a-z]{2,4})?\/search\b.*?[#&?]q=([^#&]*)/i \
  blank=https://www.google.com.hk Google
g.i|g.image: https://www.google.com.hk/search?newwindow=1&tbm=isch&q=$s \
  www.google.com re=/^(?:\.[a-z]{2,4})?\/search\b.*?[#&?]tbm=isch\b.*?[#&]q=([^#&]*)/i
g.s|g.x|g.xs|gs|gx|gxs: https://scholar.google.com.hk/scholar?hl=zh-CN&q=$s \
  scholar.google.com re=/^(?:\.[a-z]{2,4})?\/scholar\b.*?[#&?]q=([^#&]*)/i 谷歌学术
gf|gfsoso: http://gg.cytbj.com/?gws_rd=ssl#newwindow=1&q=$s 谷粉搜搜
gf.s|gfs: http://xueshu.cytbj.com/scholar?q=$s 谷粉搜搜学术
Js|js\:|Js\:|JS|JS\:|javascript\:|run\:: javascript:\ $S; re= JavaScript
w3s.tag|html.tag|tag.w3s: \
  http://www.w3school.com.cn/tags/tag_$S{$1}.asp W3school Tag
w3s.attr|w3s.att|html.attr|attr.w3s: \
  http://www.w3school.com.cn/tags/att_$S{$1_$2}.asp W3school Tag Attr
t.i: http://m.tiebaimg.com/timg?wapp&quality=80&size=b400_2000&src=$s 百度贴吧图片
bili: http://www.bilibili.com/search?keyword=$s
bili|bilibili|b.tv|Bilibili: http://search.bilibili.com/all?keyword=$s Bilibili
acfun|Acfun: http://www.acfun.tv/search/#query=$s Acfun
t|tr|g.t|g.tr|他|它: https://translate.google.com/?ie=utf-8#auto/zh-CN/$s Google 翻译
tt|tp|tu: https://translate.google.com/translate?depth=1&sl=en&u=$s Google 网页翻译
te|t.e|g.te|g.tr.e: https://translate.google.com/?ie=utf-8#auto/en/$s Google Translate
ip: . re=/^((?:\d{1,3}\.){3}\d{1,3}(?::\d{2,5})?)\/?$/
ip|IP|Ip: ip\ $S IP 查询
dns\:|DNS\:: http://119.29.29.29/d?dn=$s Public DNS
github: https://github.com/search?utf8=%E2%9C%93&q=$s GitHub 仓库
doc: . devdocs.io/ re=/^(\w+)\//
doc|docs: http://devdocs.io/#q=$s DevDocs
mdn: https://developer.mozilla.org/zh-CN/search?q=$s
mdn: https://developer.mozilla.org/en-US/search?q=$s Mozilla DN
mdn.a: https://developer.mozilla.org/en-US/docs/Web/API/$S{$1/$2} MDN Web APIs
mdn.e: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/$S{$1} MDN Element
mdn.g: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/\
Global_Objects/$S{$1/$2} MDN JavaScript
ciu|caniuse|CanIUse: http://caniuse.com/#search=$S Can I Use

v\:|v\://: vimium://$S vimium:// re=/^([^#?]*)\.html(?:\#\!?(.*))?/i Vimium C Pages
v.d: vimium://show\ $S Vimium C Display
v.dd: . vimium://show re=/\#\!(\w+)(?:\+|%20| )download=([^&]*)&(.*)$/i
v.dd: vimium://show\ $S{$1\ download=$2&$+3} re= Vimium C Display
v.i: . vimium://show image re=/^(?:\+|%20| )(?:download=[^&]*&)?(.*)$/i
v.i: vimium://show\ image\ auto=once&$S re= Vimium C Display
v.m: $S vimium://show url vimium://math re=/[\.\d][\.\d)]*|\w+(?:\([\w\.]+)?|[^\w\s]+/g
v.m|math|vimium\://math|v.e|eval\:|v\://eval|vimium\://eval: vimium://math\ $S re= Calculate
v.sum|sum\:: vimium://sum\ $S re= Calculate Sum
v.mul|mul\:: vimium://mul\ $S re= Calculate Mul
v.avg|avg\:: vimium://avg\ $S re= Calculate Avg
v.st: vimium://status\ $S re= Force tab status
v.u|v.url|v.search|u\:|url\:: vimium://search\ $S re= Search
v.c|copy\:|v\://copy|vimium\://copy: vimium://copy\ $S re= Copy to Clipboard
v.mc|v.math-copy: vimium://search-copy\ vimium://math\ $S re= Calculate and Copy
v.p|v.parse: vimium://parse\ $S re= Redo Search
```