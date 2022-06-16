#!/bin/bash

mkdir ./data/nuscenes

wget -c -O ./data/nuscenes/v1.0-trainval_meta.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval_meta.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=k4ZlnBLreVNd8e5L8iVXOyjtT%2BI%3D&Expires=1655705353'

# download part one dataset
wget -c -O ./data/nuscenes/v1.0-trainval01_keyframes.tgz 'https://s3.amazonaws.com/data.nuscenes.org/public/v1.0/v1.0-trainval01_keyframes.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=VwbzWmBWeQ26nvd85q%2Bx2vR6P4A%3D&Expires=1655705939'
wget -c -O ./data/nuscenes/v1.0-trainval01_blobs_lidar.tgz 'https://s3.amazonaws.com/data.nuscenes.org/public/v1.0/v1.0-trainval01_blobs_lidar.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=zFNqGhTAZ7QtV2r7BMTa5dY%2B6%2BA%3D&Expires=1655706008'

# cd ./data/nuscenes
tar zxvf v1.0-trainval01_blobs_lidar.tgz -C ./data/nuscenes > /dev/null 
tar zxvf v1.0-trainval01_keyframes.tgz -C ./data/nuscenes > /dev/null
tar zxvf v1.0-trainval_meta.tgz -C ./data/nuscenes > /dev/null
rm v1.0-trainval01_blobs_lidar.tgz v1.0-trainval01_keyframes.tgz v1.0-trainval_meta.tgz


:<<!
# download the full dataset
# trainval
wget -c -O ./data/nuscenes/v1.0-trainval01_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval01_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=eDYqY28HxkonMdO9pDKO2LCnQAc%3D&Expires=1655735531'
wget -c -O ./data/nuscenes/v1.0-trainval02_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval02_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=RfCic54DFbEeJ%2BGcLCmqK8x8n7g%3D&Expires=1655735614'
wget -c -O ./data/nuscenes/v1.0-trainval03_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval03_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=VlQiLKZkcnQQk9BD6JRPWoYvz0Y%3D&Expires=1655735679'
wget -c -O ./data/nuscenes/v1.0-trainval04_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval04_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=xpUkP8cTILSKKpRWUpjpD%2B7WoeQ%3D&Expires=1655735772'
wget -c -O ./data/nuscenes/v1.0-trainval05_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval05_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=761Q%2BkSnMERFqY2BZh0D%2FdN9Gdw%3D&Expires=1655735835'
wget -c -O ./data/nuscenes/v1.0-trainval06_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval06_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=bmZN8weggCGkdJ7s%2FIGBJ%2F1y48U%3D&Expires=1655735873'
wget -c -O ./data/nuscenes/v1.0-trainval07_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval07_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=vSvTsB%2FtDbHSqJ1EThossYRkZP0%3D&Expires=1655735920'
wget -c -O ./data/nuscenes/v1.0-trainval08_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval08_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=X89rI2depsmUBcoy8IHf%2FJo%2B4NM%3D&Expires=1655735975'
wget -c -O ./data/nuscenes/v1.0-trainval09_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval09_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=DRFu84aTEq2JQo7xAShrRgb%2FUck%3D&Expires=1655736016'
wget -c -O ./data/nuscenes/v1.0-trainval10_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-trainval10_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=6zmsNV9Ik8k5mw10NHyUB4BwsY8%3D&Expires=1655736057'

# test
wget -c -O ./data/nuscenes/v1.0-test_meta.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-test_meta.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=cqqbYYuoRLKRxgyy6D0YsfgWTBg%3D&Expires=1655736130'
wget -c -O ./data/nuscenes/v1.0-test_blobs.tgz 'https://s3.ap-southeast-1.amazonaws.com/asia.data.nuscenes.org/public/v1.0/v1.0-test_blobs.tgz?AWSAccessKeyId=AKIA6RIK4RRMFUKM7AM2&Signature=MpVlA0esWBowcU9EF6HFt1yehi8%3D&Expires=1655736194'

# cd ./data/nuscenes

# unzip 
tar zxvf v1.0-trainval_meta.tgz > /dev/null
 && rm v1.0-trainval_meta.tgz

tar zxvf v1.0-trainval01_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval01_blobs.tgz

tar zxvf v1.0-trainval02_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval02_blobs.tgz

tar zxvf v1.0-trainval03_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval03_blobs.tgz

tar zxvf v1.0-trainval04_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval04_blobs.tgz

tar zxvf v1.0-trainval05_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval05_blobs.tgz

tar zxvf v1.0-trainval06_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval06_blobs.tgz

tar zxvf v1.0-trainval07_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval07_blobs.tgz

tar zxvf v1.0-trainval08_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval08_blobs.tgz

tar zxvf v1.0-trainval09_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval09_blobs.tgz

tar zxvf v1.0-trainval10_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-trainval10_blobs.tgz


tar zxvf v1.0-test_meta.tgz -C ./data/nuscenes > /dev/null
 && rm  v1.0-test_meta.tgz

tar zxvf v1.0-test_blobs.tgz -C ./data/nuscenes > /dev/null
 && rm v1.0-test_blobs.tgz
!
# cd ../..
