<#
danamon
https://www.danamon.co.id/id/Personal/Lainnya/Suku-Bunga

bca
https://www.bca.co.id/id/Individu/produk/simpanan/Deposito-Berjangka

bri
#>

$a -match '(?ims)<td>Rp 250.000.000 &ndash; &lt; Rp500.000.000</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>(.+?)%</td>'
$cd_rate = $matches[1] / 100
$cd_rate




