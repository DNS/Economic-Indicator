<#
	jpmorgan Chase
	https://www.chase.com/content/dam/chase-ux/ratesheets/pdfs/rdfl1.pdf
	
	boa
	https://media.bac-assets.com/DigitalDeposit_CA_CA_Los_Angeles.pdf
	
	wells fargo
	https://www.wellsfargo.com/savings-cds/rates/
#>


$a = irm -Uri 'https://www.chase.com/bin/services/cdRate' -Method Post -ContentType 'application/x-www-form-urlencoded; charset=UTF-8' -Body 'zipcode=90001&type=consumer&language=en-US&bankCode=703&regionCode=002'
$cd_rate = ($a.ratesData.rates.'12-Month'[$a.ratesData.rates.'12-Month'.Count-1] -replace '%') / 100
if ($cd_rate) {
	$cd_rate
}




