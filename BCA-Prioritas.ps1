# pip install pdfminer.six

$base = 'https://prioritas.bca.co.id'
$page = 'https://prioritas.bca.co.id/en/Wealth-Management/Market-Insight/House-View-Report'

$a = Invoke-WebRequest $page
$pdf_url = $base + $($a.Links.href | sls '\.pdf')[0]
$pdf_filename = Split-Path $pdf_url -Leaf
wget -cnd --tries=1 $pdf_url
python C:\Users\dns\AppData\Roaming\Python\Python311\Scripts\pdf2txt.py $pdf_filename | Out-File "$pdf_filename.txt" -Encoding utf8BOM

$f = gc "$pdf_filename.txt" -Raw


$f -replace 'ΓÇô', '—' | Out-File "$pdf_filename.txt" -Encoding utf8BOM

#$pdf_filename
gc "$pdf_filename.txt" | sls '(Cash/Deposit|Fixed Income (USD|IDR)|Equity (USD|IDR)).+?—'


#ri $pdf_filename -Force
#ri "$pdf_filename.txt" -Force

<#
DM	Developed Market
EM	Emerging Market

#>
