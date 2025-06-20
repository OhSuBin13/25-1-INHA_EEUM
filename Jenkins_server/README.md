# aws_iac

📌 Jenkins 설치 및 실행 자동화를 위한 레포지토리

## 🎯 목적

- 커밋 또는 PR 발생 시 자동 빌드 및 테스트 수행
- 지속적인 코드 품질 확인
- 배포 전 단계 자동화 (CI)

## 🛠️ 기술 스택

- GitHub Actions
- Docker
- AWS ECR
- Jenkins

## 🚀 Jenkins 실행 방법 (EC2 기준)

## 📁 사전 준비

- EC2 인스턴스 실행 중일 것
- EC2 보안 그룹에서 다음 포트 허용:
  - 8080: Jenkins 웹 UI
  - 50000: Jenkins 에이전트 연결용
- EC2에 Docker 및 Docker Compose 설치되어 있을 것
- SSH 접속용 .pem 키 파일 준비
- EC2 홈 디렉토리에 ~/jenkins-iac/ 폴더 존재

## 🧳 1. ECR에서 Docker 이미지 가져오기

```bash
# ECR 로그인
aws ecr get-login-password --region ap-northeast-2   | docker login --username AWS --password-stdin <계정번호>.dkr.ecr.ap-northeast-2.amazonaws.com

# 이미지 pull
docker pull <ECR 레지스트리 주소>:<태그>
```

## 📦 2. EC2에 Docker Compose 파일 전송

```bash
scp -i "PEM 키 파일의 경로" "docker-compose 파일 경로" ec2-user@<EC2_PUBLIC_IP>:~/jenkins-iac/
```

예시:

```bash
scp -i "~/Desktop/my-key.pem" "./docker-compose.yml" ec2-user@3.38.101.238:~/jenkins-iac/
```

## 🔐 3. EC2에 SSH 접속

```bash
ssh -i "PEM 키 파일의 경로" ec2-user@<EC2_PUBLIC_IP>
```

또는 MobaXTerm, AWS Session Manager 등으로 접속해도 무방

## ⚙️ 4. Docker Compose로 Jenkins 실행

```bash
cd ~/jenkins-iac
docker compose up -d
```

## 🌐 5. Jenkins 웹 UI 접속

브라우저에서 접속:
http://<EC2_PUBLIC_IP>:8080

## 🔑 6. 초기 관리자 비밀번호 확인

```bash
docker logs jenkins
```

## 📌 참고

- 이 저장소는 Jenkins의 CI 이미지를 관리하며, EC2 실행용 docker-compose.yml은 별도로 구성됩니다.
- GitHub Actions에서 빌드 시 이 파일은 .dockerignore를 통해 이미지에 포함되지 않습니다.
