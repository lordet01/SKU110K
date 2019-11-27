#!/bin/bash

export PYTHONPATH=$(pwd)

#(1) Train
python -u object_detector_retinanet/keras_retinanet/bin/train.py csv

#(2) Train IoU Layer
#python -u object_detector_retinanet/keras_retinanet/bin/train_iou.py \
#--gpu 0 --weights "/works/SKU110K_CVPR19/snapshots/Thu_May__2_17:07:11_2019/resnet50_csv_10.h5" \
#csv | tee train_iou_sku110k.log

#(3) predict
#nohup env PYTHONPATH="/works/SKU110K_CVPR19" \
#python -u object_detector_retinanet/keras_retinanet/bin/predict.py \
#--gpu 0 csv "/home/ubuntu/Documents/SKU110K/snapshot/Thu_May__2_17:10:30_2019/iou_resnet50_csv_07.h5" \
#--hard_score_rate=0.5 | tee predict_sku110k.log

