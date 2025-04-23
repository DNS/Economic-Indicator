# Ticker.ps1 — Get current US stock price quote

# from Martin Shkreli ticker API
# https://generic709.herokuapp.com/stockc/${singleticker}


if ($args) {
	$bulk_symbols = $args
} else {
	$bulk_symbols = $input | % { $_ }
}

if (-not $bulk_symbols) {
	Write-Output 'Usage:'
	Write-Output '	Ticker.ps1 [STOCK1] [STOCK2]'
	Write-Output "	'[STOCK1]', '[STOCK2]' | Ticker.ps1"
	exit
}


foreach ($symbol in $bulk_symbols) {
	irm "https://generic709.herokuapp.com/stockc/$symbol"
}






