#！/bin/sh
echo $1:$2
echo V$3
case "$3" in 
    "2.6" | "2.7" | "2.8" | "2.9")
    echo -e "\033[31m client \033[0m":>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/21Client/$3.0.43075 -r $1:$2>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/21Client/$3.0.46385 -r $1:$2>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/21Client/$3.0.48369 -r $1:$2>>svnlog.txt

    echo -e "\033[31m db \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/23Database/$3.0.43021 -r $1:$2>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/23Database/$3.0.46363 -r $1:$2>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/23Database/$3.0.48366 -r $1:$2>>svnlog.txt

    echo -e "\033[31m ITSService \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/241ITSService -r  $1:$2>>svnlog.txt

    echo -e "\033[31m arb \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/arb_v$3.0 -r $1:$2>>svnlog.txt

    echo -e "\033[31m data_sync \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/data_sync -r  $1:$2>>svnlog.txt

    echo -e "\033[31m futures_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/futures_trade_server -r  $1:$2>>svnlog.txt

    echo -e "\033[31m gold_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/gold_trade_server_v2 -r  $1:$2>>svnlog.txt

    echo -e "\033[31m its_common \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/its_common -r  $1:$2>>svnlog.txt

    echo -e "\033[31m its_share \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/its_share -r  $1:$2>>svnlog.txt

    echo -e "\033[31m OrderCentral \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/OrderCentral -r  $1:$2>>svnlog.txt

    echo -e "\033[31m OrderCentral_Security \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/OrderCentral_Security -r  $1:$2>>svnlog.txt

    echo -e "\033[31m securities_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/securities_trade_server -r  $1:$2>>svnlog.txt

    echo -e "\033[31m stock_options_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/stock_options_trade_server -r  $1:$2>>svnlog.txt

    echo -e "\033[31m trade_front \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/branches/24Backstage/V$3.0/trade_front -r $1:$2>>svnlog.txt

    echo -e "\033[31m hq_cmdsiii \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/hq_cmdsiii -r $1:$2>>svnlog.txt

    echo -e "\033[31m QuoteSave \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/245QuoteSave -r $1:$2>>svnlog.txt
    
    echo -e "\033[31m monitor_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/monitor_server -r $1:$2>>svnlog.txt

    echo -e "\033[31m MonitorClient \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/26MonitorClient -r $1:$2>>svnlog.txt
    ;;
    *)
    echo -e "\033[31m client \033[0m":>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/21Client -r $1:$2>>svnlog.txt

    echo -e "\033[31m db \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/23Database -r $1:$2>>svnlog.txt

    echo -e "\033[31m ITSService \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/241ITSService -r $1:$2>>svnlog.txt

    echo -e "\033[31m QuoteSave \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/245QuoteSave -r $1:$2>>svnlog.txt

    echo -e "\033[31m arb \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/arb -r $1:$2>>svnlog.txt

    echo -e "\033[31m data_sync \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/data_sync -r $1:$2>>svnlog.txt

    echo -e "\033[31m futures_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/futures_trade_server -r $1:$2>>svnlog.txt

    echo -e "\033[31m gold_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/gold_trade_server_v2 -r $1:$2>>svnlog.txt

    echo -e "\033[31m hq_cmdsiii \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/hq_cmdsiii -r $1:$2>>svnlog.txt

    echo -e "\033[31m its_common \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/its_common -r $1:$2>>svnlog.txt

    echo -e "\033[31m its_share \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/its_share -r $1:$2>>svnlog.txt

    echo -e "\033[31m monitor_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/monitor_server -r $1:$2>>svnlog.txt

    echo -e "\033[31m OrderCentral \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/OrderCentral -r $1:$2>>svnlog.txt

    echo -e "\033[31m OrderCentral_Security \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/OrderCentral_Security -r $1:$2>>svnlog.txt

    echo -e "\033[31m securities_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/securities_trade_server -r $1:$2>>svnlog.txt

    echo -e "\033[31m stock_options_trade_server \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/stock_options_trade_server -r $1:$2>>svnlog.txt

    echo -e "\033[31m trade_front \033[0m":>>svnlog.txt
    svn log http://10.253.47.223/svn/ITS-develop/2source/24Backstage/trade_front -r $1:$2>>svnlog.txt
    ;;
esac



