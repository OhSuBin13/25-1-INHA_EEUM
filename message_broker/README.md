# Mosquitto Broker (MQTT 서버)

## 1. 프로젝트 개요

Eclipse Mosquitto를 Docker Compose를 이용해 관리하는 MQTT 브로커 서버입니다.
개발 및 운영 환경 모두를 고려하여 작성되었습니다.

---

## 2. 개발 환경

- EC2: Amazon Linux 2023
- Docker: 24.x
- Docker Compose: v2.27.0
- Mosquitto Image: eclipse-mosquitto:2.0.18

---

## 3. 프로젝트 구조

```
message_broker
├─ docker-compose.yml
├─ Jenkinsfile
├─ mosquitto
│  ├─ config
│  │  └─ mosquitto.conf
│  ├─ data
│  └─ log
└─ README.md

```

## 4. 컨테이너 실행 방법

1. docker compose로 컨테이너 실행
   sudo docker compose up -d

2. 컨테이너 상태 확인
   sudo docker ps

- 컨테이너 이름은 mosquitto 입니다.
- MQTT 포트 1883번이 열려 있어야 합니다.

---

## 5. 컨테이너 충돌 문제 해결 방법

만약 docker compose up 시 다음과 같은 에러가 발생할 경우:

Error response from daemon: Conflict. The container name "/mosquitto" is already in use

기존 mosquitto 컨테이너를 삭제 후 다시 실행합니다:

sudo docker rm -f mosquitto
sudo docker compose up -d

---

## 6. Mosquitto 설정 파일 (mosquitto.conf)

mosquitto/config/mosquitto.conf 기본 설정 예시:

persistence true
persistence_location /mosquitto/data/

log_dest file /mosquitto/log/mosquitto.log

listener 1883
allow_anonymous true

---

## 7. Jenkinsfile 배포 프로세스 요약

- GitHub에서 docker-compose.yml과 mosquitto 디렉토리 checkout
- EC2 서버로 파일 전송
- 기존 컨테이너 정리 후 새 컨테이너 생성 (down → image prune → up)
- 운영 환경을 고려해 볼륨 삭제는 하지 않음

---

## 8. 주의사항

- mosquitto 디렉토리에 반드시 config/mosquitto.conf 파일이 존재해야 합니다.
- EC2 서버에 Docker, Docker Compose가 설치되어 있어야 정상 작동합니다.
- 개발 단계에서는 allow_anonymous=true를 사용하지만, 운영 시 인증 설정을 반드시 고려해야 합니다.

---

# ✨ 최종 정리

Mosquitto MQTT 브로커는 Docker Compose를 통해 손쉽게 구축 및 관리할 수 있으며,
초기 컨테이너 충돌 문제를 주의하면 안정적으로 운영 가능합니다.
