#!/bin/sh

mkdir = /home/kfts/its
output = /home/kfts/setup_zw
echo $mkdir
echo $output

cd $mkdir/data_sync/
echo 'data_sync':`./data_sync -v` >> $output/version.txt

cd $mkdir/futures_trade_server/
echo 'futures_trade_server':`./kfts_Future -v` >> $output/version.txt

cd $mkdir/gold_trade_server/
echo 'gold_trade_server':`./GoldTradeServer -v` >> $output/version.txt

cd $mkdir/its_service/
echo 'its_service':`./ITSService -v` >> $output/version.txt

cd $mkdir/securities_trade_server/bin/
echo 'securities_trade_server':`./trade_server -v` >> $output/version.txt

cd $mkdir/stock_options_trade_server/
echo 'stock_options_trade_server':`./kfts_StockOption -v` >> $output/version.txt

cd $mkdir/trade_front/bin/
echo 'trade_front':`./trade_front -v` >> $output/version.txt

cd $mkdir/monitor_server
echo 'monitor_server':`./monitor_server -v` >> $output/version.txt

