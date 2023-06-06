# get dataset from https://drive.google.com/drive/folders/19Gm0JonlTn7TjFn0OXlriiU5I0j3US8k
FOLDER=/data/data/mapping_robot_data_collection
xhost +local:root
docker run -it -e "DISPLAY" -e "QT_X11_NO_MITSHM=1" -e MULTICAL_DATASET=$FOLDER\
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v "$FOLDER:/data" multical_ignore_boards_with_web