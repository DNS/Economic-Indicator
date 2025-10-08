# price USD


$commodities = @{
	'sugar' = 'https://ycharts.com/indicators/world_sugar_price'
	'cotton' = 'https://ycharts.com/indicators/cotlook_aindex_cotton_price'
	'coal' = 'https://ycharts.com/indicators/coal_price_index'
	'gold' = 'https://ycharts.com/indicators/gold_price_in_us_dollars'
}



foreach ($k in $commodities.Keys) {
	$(iwr $commodities.$k).Content -match 'is at a current level of (.+?),' | Out-Null
	"$k`: " + $Matches[1]
}

