%dw 2.0
output application/json
var v= payload
---
{
"ActOn": (v.Document.*Field filter (item,index) -> (item.@name contains "xFndVirusScanDate"))[0]
}

