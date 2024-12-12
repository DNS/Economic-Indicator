<#
Dependencies:
	winget winget install JernejSimoncic.Wget
	pip install pdfminer.six
#>

$base = 'https://prioritas.bca.co.id'
$page = 'https://prioritas.bca.co.id/en/Wealth-Management/Market-Insight/House-View-Report'

$a = Invoke-WebRequest $page
$pdf_url = $base + $($a.Links.href | Select-String '\.pdf')[0]
$pdf_filename = Split-Path $pdf_url -Leaf
wget -cnd --tries=1 $pdf_url | Out-Null
python "C:\Users\$env:USERNAME\AppData\Roaming\Python\Python311\Scripts\pdf2txt.py" $pdf_filename | Out-File "$pdf_filename.txt" -Encoding utf8BOM | Out-Null

$f = Get-Content "$pdf_filename.txt" -Raw
$f -replace 'ΓÇô', '—' | Out-File "$pdf_filename.txt" -Encoding utf8BOM

Clear-Host
"____________________________"
$pdf_filename
''
Get-Content "$pdf_filename.txt" | Select-String '(Cash/Deposit|Fixed Income (USD|IDR)|Equity (USD|IDR)).+?—' -Raw


#Remove-Item $pdf_filename -Force
#Remove-Item "$pdf_filename.txt" -Force

<#
DM	Developed Market
EM	Emerging Market

#>
