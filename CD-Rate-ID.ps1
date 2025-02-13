<#
	danamon
	https://www.danamon.co.id/id/Personal/Lainnya/Suku-Bunga

	bca
	https://www.bca.co.id/id/Individu/produk/simpanan/Deposito-Berjangka

	bri
	https://bri.co.id/simulasi-deposito
#>

# Danamon CD Rate
$a = iwr 'https://www.danamon.co.id/id/Personal/Lainnya/Suku-Bunga'
$m = $a.Content -match '(?ims)<td>Rp 250.000.000 &ndash; &lt; Rp500.000.000</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>.+?</td>.+?<td>(.+?)%</td>'
if ($m) {
	$cd_rate = $matches[1] / 100
	$cd_rate
}



