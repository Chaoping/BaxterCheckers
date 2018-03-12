mkdir temp_ws

mkdir -p temp_ws/src

cd temp_ws/src

catkin_init_workspace

cd ..

catkin_make

source devel/setup.sh

cd src 
catkin_create_pkg game_gcp_1 std_msgs rospy baxter_interface

cp ../../baxter_source/* game_gcp_1/

cd ..

catkin_make

source devel/setup.sh

chmod u+x src/game_gcp_1/*
