#!/bin/bash

cd ./mmdetection3d
mkdir ./data/kitti/ && mkdir ./data/kitti/ImageSets
wget -c https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_velodyne.zip
wget -c https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_image_2.zip
wget -c https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_calib.zip
wget -c https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_label_2.zip


unzip -d ./data/kitti ./data_object_velodyne.zip > /dev/null
unzip -d ./data/kitti ./data_object_image_2.zip > /dev/null
unzip -d ./data/kitti ./data_object_calib.zip > /dev/null
unzip -d ./data/kitti ./data_object_label_2.zip > /dev/null

rm ./data_object_velodyne.zip ./data_object_image_2.zip ./data_object_calib.zip ./data_object_label_2.zip ./devkit_object.zip

# Download data split
wget -c  https://raw.githubusercontent.com/traveller59/second.pytorch/master/second/data/ImageSets/test.txt --no-check-certificate --content-disposition -O ./data/kitti/ImageSets/test.txt
wget -c  https://raw.githubusercontent.com/traveller59/second.pytorch/master/second/data/ImageSets/train.txt --no-check-certificate --content-disposition -O ./data/kitti/ImageSets/train.txt
wget -c  https://raw.githubusercontent.com/traveller59/second.pytorch/master/second/data/ImageSets/val.txt --no-check-certificate --content-disposition -O ./data/kitti/ImageSets/val.txt
wget -c  https://raw.githubusercontent.com/traveller59/second.pytorch/master/second/data/ImageSets/trainval.txt --no-check-certificate --content-disposition -O ./data/kitti/ImageSets/trainval.txt
