# Interest-Rate-ID.ps1

$a = iwr https://www.bi.go.id/id/statistik/indikator/BI-Rate.aspx
$a.Content -match '<td class="text-center">(.*?) %</td>' | Out-Null
"$($Matches[1])%"


