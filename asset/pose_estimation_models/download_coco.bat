@echo off
REM Create directories
mkdir coco
cd coco
mkdir images
cd images

REM Download images
wget -c http://images.cocodataset.org/zips/train2017.zip
wget -c http://images.cocodataset.org/zips/val2017.zip
wget -c http://images.cocodataset.org/zips/test2017.zip
wget -c http://images.cocodataset.org/zips/unlabeled2017.zip

REM Unzip images
unzip train2017.zip
unzip val2017.zip
unzip test2017.zip
unzip unlabeled2017.zip

REM Remove zip files
del train2017.zip
del val2017.zip
del test2017.zip
del unlabeled2017.zip

REM Change directory
cd ..

REM Download annotations
wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip
wget -c http://images.cocodataset.org/annotations/stuff_annotations_trainval2017.zip
wget -c http://images.cocodataset.org/annotations/image_info_test2017.zip
wget -c http://images.cocodataset.org/annotations/image_info_unlabeled2017.zip

REM Unzip annotations
unzip annotations_trainval2017.zip
unzip stuff_annotations_trainval2017.zip
unzip image_info_test2017.zip
unzip image_info_unlabeled2017.zip

REM Remove zip files
del annotations_trainval2017.zip
del stuff_annotations_trainval2017.zip
del image_info_test2017.zip
del image_info_unlabeled2017.zip
