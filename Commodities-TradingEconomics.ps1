# get selected commodities price from tradingeconomics.com

$a = $(iwr https://tradingeconomics.com/forecast/commodity).Content

$b = [Regex]::Matches($a, '(?ims)<b>([\w ]+?)</b>\s+</a>\s+</td>\s+<td id="p" class="datatable-item">\s+(.+?)\s+</td>')
$b | %{ $_.Groups[1].Value + ': ' + $_.Groups[2].Value }


