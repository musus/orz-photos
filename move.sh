GET_PATH=$(pwd)
PJ_NAME=`echo ${GET_PATH} | awk -F "/" '{ print $NF }'`
JPG_DIR=$PJ_NAME"-jpg"
RAW_DIR=$PJ_NAME"-raw"

if [ ! -d $JPG_DIR ]; then
	mkdir $PJ_NAME
fi

if [ ! -d $RAW_DIR ]; then
	mkdir $RAW_DIR
fi

for file in *.jpg *.JPG ; do
    [ -f "$file" ] || continue
    # 実行したいコマンド
    mv $file $JPG_DIR'/'
done

for file in *.raw *.ARW *.DNG ; do
    [ -f "$file" ] || continue
    # 実行したいコマンド
    mv $file $RAW_DIR'/'
done
