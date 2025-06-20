# Time Scale Database

1. 프로젝트 개요
   TimescaleDB를 Docker Compose를 이용해 관리하여 IoT 데이터를 저장하는 데이터베이스 서버입니다.
   개발 및 운영 환경 모두를 고려하여 작성되었습니다.

2. 개발 환경

- EC2: Amazon Linux 2023
- Docker: 24.x
- Docker Compose: v2.27.0
- TimescaleDB Image: timescale/timescaledb:latest-pg17
- PostgreSQL Client: 컨테이너 내부 psql 사용

3. 프로젝트 구조

```
   time-scale-database/
   ├── database/
   │ └── init.sql
   ├── docker-compose.yml
   ├── Jenkinsfile
   └── README.txt
```

4. 데이터베이스 컨테이너 실행 방법

- 컨테이너 실행
  sudo docker compose up -d

- 컨테이너 내부 진입
  sudo docker exec -it timescaledb bash

- TimescaleDB 접속 (iot-database로 접속해야 함)
  psql -U postgres -d iot-database

※ 데이터베이스 이름은 iot-database (하이픈 포함) 입니다.

5. 초기화(init.sql) 적용 및 확인 방법
   초기 실행 시, 다음이 자동으로 설정됩니다:

- TimescaleDB 확장 설치
- sensors 테이블 생성
- readings 테이블 생성 및 하이퍼테이블 변환

확인 방법 (컨테이너 안 psql 접속 후):

- 테이블 조회: \dt
- 하이퍼테이블 조회: SELECT \* FROM timescaledb_information.hypertables;

6. 개발 중 실수로 볼륨 초기화가 필요한 경우

- 컨테이너 및 볼륨 삭제
  sudo docker compose down -v

- 다시 컨테이너 생성
  sudo docker compose up -d

※ 볼륨 삭제 시 데이터베이스 안의 데이터도 모두 삭제됩니다. 개발 단계에서만 사용하세요.

7. 주의사항

- 운영 배포에서는 절대 docker compose down -v를 사용하지 않습니다.
- 초기화(init.sql)는 빈 볼륨 상태일 때만 실행됩니다.
- 운영환경에서는 데이터베이스를 안전하게 유지하는 것이 최우선입니다.
