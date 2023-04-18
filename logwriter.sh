#!/bin/bash

# ログ出力先のディレクトリを作成
DIR="./log"
if [ ! -d $DIR ]
then
    mkdir $DIR
fi

# ログファイルを作成
FILE="$DIR/log.txt"

for ((i=1; i<=10; i++))
do
    TODAY=`date '+%Y-%m-%d %H:%M:%S'`
    echo "$TODAY Log Write $i!!!" >> $FILE
    sleep 5
done
