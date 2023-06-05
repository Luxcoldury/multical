docker build --no-cache -t multical_more_bags -f Dockerfile_ros1_18_04 .
docker build --no-cache -t multical_more_bags_web_base -f Dockerfile_ros1_18_04_web_base .
docker build --no-cache -t multical_more_bags_with_web -f Dockerfile_ros1_18_04_with_web .