### [공통]: create-network.sh로 vpc 네트워크 구축

## [4.21 실습]:
1. docker-compose-자동화실습
2. 비관리형_로드밸런서+Route53-실습
### <핵심 포인트> 인스턴스 생성부터 docker compose up까지의 포인트
1. GCP 인스턴스 생성 시 startup-scripts(유저데이터)에서 init-scripts-docker-compose.sh를 사용하는 구조.
2. 이때 init-script-docker-compose.sh는 다른 깃허브 레포지토리에 위치함. 
3. docker-network의 /main/ex-board/docker-compose-gcp.yaml을 인스턴스로 다운로드해서 docker compose up 진행
4. 위 docker-compose-gcp.yaml에서 사용하는 이미지(nginx,fastapi,mysql)는 게시판 기능을 위한 이미지로서, 도커 허브(reoyuza)의 레포(nginx-board,fastapi-board,mysql-board)에 위치

## [4.22 실습]:
### <폴더 1>
4.21의 스크립트 활용하여 public 인스턴스 하나로 게시판 똑같이 띄우기.
### <폴더 2>
인스턴스로 이미지 생성 및 해당 이미지로 인스턴스 생성 후 게시판 기능 동작 확인
### <폴더 3>
인스턴스 템플릿, MIG(Manged Instance Group; 관리형 인스턴스 그룹) 생성 및 오토 스케일 설정
### <폴더 4>
MIG + 글로벌 HTTP 로드밸런서 생성을 스크립트로 한번에 구성
### <폴더 5> EKS 실습
