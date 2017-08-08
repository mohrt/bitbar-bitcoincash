#!/bin/bash

#
# <bitbar.title>BitcoinCash</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Monte Ohrt</bitbar.author>
# <bitbar.author.github>mohrt</bitbar.author.github>
# <bitbar.desc>Simply shows the value of BitcoinCash in USD</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.abouturl></bitbar.abouturl>
#
# Text above --- will be cycled through in the menu bar,
# whereas text underneath will be visible only when you
# open the menu.
#

PATH=/usr/local/bin:$PATH

wget -qO- https://api.coinmarketcap.com/v1/ticker/bitcoin-cash/ | grep price_usd | cut -f4 -d '"'