#!/bin/sh
echo $1
mkdir1="/home/kfts/its280"

case "$1" in
        "2.6" | "2.7" | "2.8" | "2.9")
        output="/kfts/ITSCompiler/compiler_output/branch"
        scp -r kfts@10.243.140.108:$output/data_sync/V$1/* $mkdir11/data_sync/
        scp -r kfts@10.243.140.108:$output/futures_trade_server/V$1/* $mkdir1/futures_trade_server/
        scp -r kfts@10.243.140.108:$output/gold_trade_server/V$1/* $mkdir1/gold_trade_server/
        scp -r kfts@10.243.140.108:$output/its_service/V$1/* $mkdir1/its_service/
        scp -r kfts@10.243.140.108:$output/securities_trade_server/V$1/* $mkdir1/securities_trade_server/
        scp -r kfts@10.243.140.108:$output/stock_options_trade_server/V$1/* $mkdir1/stock_options_trade_server/
        scp -r kfts@10.243.140.108:$output/trade_front/V$1/* $mkdir1/trade_front/
        scp -r kfts@10.243.140.108:$output/arb/V$1/bus.xml $mkdir1/arb/
        ;;
        *)
        output="/kfts/ITSCompiler/compiler_output/trunk"
        scp -r kfts@10.243.140.108:$output/data_sync/* $mkdir1/data_sync/
        scp -r kfts@10.243.140.108:$output/futures_trade_server/* $mkdir1/futures_trade_server/
        scp -r kfts@10.243.140.108:$output/its_service/* $mkdir1/its_service/
        #scp -r kfts@10.243.140.108:$output/its_service/* $mkdir1/its_service2/
        scp -r kfts@10.243.140.108:$output/securities_trade_server/* $mkdir1/securities_trade_server/
        scp -r kfts@10.243.140.108:$output/stock_options_trade_server/* $mkdir1/stock_options_trade_server/
        scp -r kfts@10.243.140.108:$output/gold_trade_server/* $mkdir1/gold_trade_server/
        scp -r kfts@10.243.140.108:$output/trade_front/* $mkdir1/trade_front/
        scp -r kfts@10.243.140.108:$output/arb/bus.xml $mkdir1/arb/
        ;;
esac

#scp -r kfts@10.243.140.108:$output/monitor_server/* $mkdir1/monitor_server/

#trunk OrderCentral
#scp -r kfts@10.253.147.24:/home/kfts/24Backstage/OrderCentral/OrderCentral/bin/OrderCentral $mkdir1/OrderCentral/

#2.8 OrderCentral
#scp -r kfts@10.253.147.24:/home/kfts/V2.8.3/24Backstage/OrderCentral/OrderCentral/bin/OrderCentral $mkdir1/OrderCentral/

#2.7 OrderCentral
#scp -r kfts@10.253.147.24:/home/kfts/V2.7/OrderCentral/OrderCentral/bin/OrderCentral $mkdir1/OrderCentral/