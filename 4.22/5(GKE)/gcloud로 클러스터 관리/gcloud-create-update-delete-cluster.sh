# GKE 클러스터 생성, 수량 조정, 삭제 스크립트
# 이 파일 실행하는 거 아니고, 필요한 코드 찾아서 붙여넣는 용도임

# 클러스터 생성
gcloud container clusters create st8-ex-cluster \
    --region asia-southeast3 \
    --node-locations asia-southeast3-a,asia-southeast3-b \
    --network st8-ex-vpc \
    --subnetwork st8-ex-public-subnet \
    --num-nodes 1 \
    --min-nodes 1 \
    --max-nodes 2 \
    --enable-autoscaling \
    --machine-type n4-standard-2 \
    --disk-size 20GB \
    --enable-ip-alias \
    --workload-pool=named-foundry-486921-r5.svc.id.goog \

# 클러스터 수량 조정
gcloud container clusters update st8-ex-cluster \
    --region asia-southeast3 \
    --num-nodes 1 \
    --min-nodes 1 \
    --max-nodes 3 \
    --enable-autoscaling

# 클러스터 삭제
gcloud container clusters delete st8-ex-cluster \
    --region asia-southeast3 \
    --quiet

