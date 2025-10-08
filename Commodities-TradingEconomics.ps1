# get selected commodities price from tradingeconomics.com

$a = $(iwr https://tradingeconomics.com/forecast/commodity).Content
$b = [Regex]::Matches($a, '(?ims)<b>(Brent|Natural gas|Gasoline|Heating Oil|Coal|Ethanol|Uranium|Methanol|Gold|Silver|Copper|Steel|Lithium|Platinum|Iron Ore|Silicon|Scrap Steel|Titanium|Soybeans|Wheat|Lumber|Cheese|Palm Oil|Milk|Sugar|Rice|Cotton|Rubber|Orange Juice|Coffee|Oat|Wool|Cocoa|Tea|Barley|Rapeseed|Sunflower Oil|Butter|Potatoes|Corn|Feeder Cattle|Live Cattle|Lean Hogs|Beef|Poultry|Eggs US|Salmon|Cobalt|Lead|Aluminum|Tin|Zinc|Nickel|Phosphorus|Synthetic Rubber|Soda Ash|Neodymium|Sulfur|Urea|Magnesium|Gallium|Germanium|Manganese|Indium)</b>\s+</a>\s+</td>\s+<td id="p" class="datatable-item">\s+(.+?)\s+</td>')
$b | %{ $_.Groups[1].Value + ': ' + $_.Groups[2].Value }


