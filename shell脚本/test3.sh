#!/bin/sh
echo $1
echo $2
#my_array=(arb trade_server kfts_Future GoldTradeServer kfts_StockOptio ITSService data_sync trade_front QuoteSave ITSService)
case "$1" in
        "arb" | "trade_server" | "OrderCentral" | "kfts_Future" | "GoldTradeServer" | "kfts_StockOptio" | "ITSService" | "data_sync" | "trade_front" | "QuoteSave" | "ITSService")
         thread_num="`ps -u kfts|grep $1|awk '{print $1}'`"
                        if [ $thread_num ];then
                                killall -9 "$1"
                                if [ "$?" -ne "0" ]; then
                                        echo "$1 killed error "
                                        echo "$2 Copy error"
                                        continue
                                fi
                                echo "$1" "has dead"
                              case "$2" in 
                                   "data_sync" | "futures_trade_server" | "its_service" | "gold_trade_server" | "securities_trade_server" | "stock_options_trade_server" | "trade_front" | "monitor_server" | "QuoteSave")
                                   scp -r root@10.243.140.108:/kfts/ITSCompiler/compiler_output/branch/$2/V2.8/*  /home/kfts/its/$2/
                                   if [ "$?" -ne "0" ]; then
                                       echo "$2 Copy error"
                                       exit '1'
                                   fi
                                   echo "$2 copy over"
                                   case "$2" in
                                        "securities_trade_server" | "trade_front")
                                        cd /home/kfts/its/$2/bin/
                                        echo `./$1 -v`
                                        ;;
                                        *)
                                       cd /home/kfts/its/$2/
                                       echo `./$1 -v`
                                       ;;
                                       esac
                                   ;;
                                   "OrderCentral")
                                   scp -r kfts@10.253.147.24:/home/kfts/V2.8/OrderCentral/OrderCentral/bin/OrderCentral /home/kfts/its/$2/
                                   if [ "$?" -ne "0" ]; then
                                       echo "$2 Copy error"
                                       exit '1'
                                   fi
                                   echo "$2 copy over"
                                   cd /home/kfts/its/$2/
                                   echo `./$1 -v`
                                   ;;
                                  *)
                                   echo "can not find destination"
                                   ;;
                              esac
                        else
                                echo "[$1]" ",is not exist"
                                #............
                                case "$2" in 
                                   "data_sync" | "futures_trade_server" | "its_service" | "gold_trade_server" | "securities_trade_server" | "stock_options_trade_server" | "trade_front" | "monitor_server" | "QuoteSave")
                                   scp -r root@10.243.140.108:/kfts/ITSCompiler/compiler_output/branch/$2/V2.8/*   /home/kfts/its/$2/
                                   if [ "$?" -ne "0" ]; then
                                       echo "$2 Copy error"
                                       exit '1'
                                   fi
                                   echo "$2 copy over"
                                   #.........
                                   case "$2" in
                                        "securities_trade_server" | "trade_front")
                                        cd /home/kfts/its/$2/bin/
                                        echo `./$1 -v`
                                        ;;
                                        *)
                                       cd /home/kfts/its/$2/
                                       echo `./$1 -v`
                                       ;;
                                       esac
                                   ;;
                                   "OrderCentral")
                                   scp -r kfts@10.253.147.24:/home/kfts/V2.8/OrderCentral/OrderCentral/bin/OrderCentral /home/kfts/its/$2/
                                   if [ "$?" -ne "0" ]; then
                                       echo "$2 Copy error"
                                       exit '1'
                                   fi
                                   echo "$2 copy over"
                                   cd /home/kfts/its/$2/
                                   echo `./$1 -v`
                                   ;;
                                  *)
                                   echo "can not find destination"
                                   ;;
                              esac
                        fi
         ;;
        *)
         echo "can not find destination"
         echo "$2 Copy error"
         ;;
esac

