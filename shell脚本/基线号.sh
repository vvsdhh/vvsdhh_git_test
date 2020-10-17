#!/bin/sh
cd /kfts/its/data_sync/
echo 'data_sync':`./data_sync -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/futures_trade_server/
echo 'futures_trade_server':`./kfts_Future -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/gold_trade_server/
echo 'gold_trade_server':`./GoldTradeServer -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/its_service/
echo 'its_service':`./ITSService -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/securities_trade_server/bin/
echo 'securities_trade_server':`./trade_server -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/stock_options_trade_server/
echo 'stock_options_trade_server':`./kfts_StockOption -v` >> /kfts/auto_setup/version.txt

cd /kfts/its/trade_front/bin/
echo 'trade_front':`./trade_front -v` >> /kfts/auto_setup/version.txt


#!/bin/sh
cd /kfts/compiler_output/branch/data_sync/V2.6/
echo 'data_sync':`./data_sync -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/futures_trade_server/V2.6/
echo 'futures_trade_server':`./kfts_Future -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/gold_trade_server/V2.6/
echo 'gold_trade_server':`./GoldTradeServer -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/its_service/V2.6/
echo 'its_service':`./ITSService -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/securities_trade_server/V2.6/bin/
echo 'securities_trade_server':`./trade_server -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/stock_options_trade_server/V2.6/
echo 'stock_options_trade_server':`./kfts_StockOption -v` >> /kfts/auto_setup/v2.6.txt

cd /kfts/compiler_output/branch/trade_front/V2.6/bin/
echo 'trade_front':`./trade_front -v` >> /kfts/auto_setup/v2.6.txt