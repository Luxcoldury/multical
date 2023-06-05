# get dataset from https://drive.google.com/drive/folders/19Gm0JonlTn7TjFn0OXlriiU5I0j3US8k
FOLDER=/data/data/mapping_robot_data_collection
# FOLDER=$HOME/multical_calibration_example_data
xhost +local:root
docker run -it -p 5000:5000 -e "DISPLAY" -e "QT_X11_NO_MITSHM=1" -e "MULTICAL_DATASET=/data" -e "TZ=Asia/Shanghai"\
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v "$FOLDER:/data" multical_more_bags_with_web