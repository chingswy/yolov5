python3 train.py --img 640 --batch 32 --epochs 200 --data data/wholebody-desktop.yml --weights models/yolov5m.pt --name wholebody-desk
python3 -m torch.distributed.launch --nproc_per_node 4 train.py --batch 64 --data data/wholebody-desktop.yml --weights models/yolov5m.pt --device 1,2,3,4 --name yolo-0608
