#!/bin/bash
# kubectl로 클러스터 관리하기 위한 config controller 설치 및 클러스터 생성 스크립트
##############################################################
# 클러스터 관리를 kubectl로 하고자 할 경우, config controller 설치
# =============================================================

# GKE 관리 전용 서비스 설치: config controller (18분 내외 소요)
# 실습 중 여기서 에러남 
gcloud anthos config controller create st8-manager \
    --location asia-southeast1 \
    --network default \
    --master-ipv4-cidr-block 192.168.10.0/28

# 관리 환경 접속 설정
gcloud anthos config controller get-credentials st8-manager \
    --location asia-southeast1 \
    --network default \
    --master-ipv4-cidr-block 192.168.10.0/28



# 클러스터 생성
kubectl apply -f create-cluster.yaml