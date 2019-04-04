GET_PATH=$(pwd)
PJ_NAME=`echo ${GET_PATH} | awk -F "/" '{ print $NF }'`
JPG_DIR=$PJ_NAME"-jpg"
RAW_DIR=$PJ_NAME"-raw"
SELECT_DIR=$PJ_NAME"-select"

pwd
for file in *.jpg *.JPG ; do
    [ -f "$file" ] || continue
    # mv $file $JPG_DIR'/'
done
