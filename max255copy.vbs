'
set run=createobject("wscript.shell")
Function CutAndJoin(sSource, iLong, sJoiner)
    Dim I, N
    N = Len(sSource) / iLong
    If(N <> Fix(N))Then N = Fix(N) + 1
    For I = 0 To N - 1
    CutAndJoin = CutAndJoin & Mid(sSource, I * iLong + 1, iLong) & sJoiner
    Next
    If(N > 0)Then CutAndJoin = Left(CutAndJoin, Len(CutAndJoin) - Len(sJoiner))
End Function

do
arry=inputbox("input 'exit' to exit",test)
if  arry="exit" then
    exit do
end if
arr=cutandjoin(arry,1,"&&")
arry=split(arr,"&&")
wscript.sleep 800
ub=int(ubound(arry))
for i=int(0) to int(ub)
    wscript.sleep 1
    select case arry(i)
        case "!" run.SendKeys "+1"
        case "@" run.SendKeys "+2"
        case "#" run.SendKeys "+3"
        case "$" run.SendKeys "+4"
        case "%" run.SendKeys "+5"
        case "^" run.SendKeys "+6"
        case "&" run.SendKeys "+7"
        case "*" run.SendKeys "+8"
        case "(" run.SendKeys "+9"
        case ")" run.SendKeys "+0"
        case "+" run.SendKeys "+="
        case "{" run.SendKeys "+["
        case "}" run.SendKeys "+]"
        case ":" run.SendKeys "+;"
        case "|" run.SendKeys "~"
        case else run.sendkeys arry(i)
    end select
next
wscript.sleep 800
msgbox "done",,"test"
loop
msgbox "exit"
