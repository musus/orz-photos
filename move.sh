GET_PATH=$(pwd)
PJ_NAME=`echo ${GET_PATH} | awk -F "/" '{ print $NF }'`
JPG_DIR=$PJ_NAME"-jpg"
RAW_DIR=$PJ_NAME"-raw"
SELECT_DIR=$PJ_NAME"-select"

if [ ! -d $JPG_DIR ]; then
	mkdir $JPG_DIR
fi

if [ ! -d $RAW_DIR ]; then
	mkdir $RAW_DIR
fi

for file in *.jpg *.JPG ; do
    [ -f "$file" ] || continue
    mv $file $JPG_DIR'/'
done

for file in *.raw *.ARW *.DNG ; do
    [ -f "$file" ] || continue
    mv $file $RAW_DIR'/'
done
