-- 확장 설치 (TimescaleDB 확장)
CREATE EXTENSION IF NOT EXISTS timescaledb;

-- 센서 테이블
CREATE TABLE IF NOT EXISTS sensors (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  location TEXT
);

-- readings 테이블 (복합키 방식)
CREATE TABLE IF NOT EXISTS readings (
  sensor_id TEXT REFERENCES sensors(id),
  ts TIMESTAMPTZ NOT NULL DEFAULT now(),
  temperature FLOAT,
  humidity FLOAT,
  tvoc FLOAT,
  noise FLOAT,
  PRIMARY KEY (sensor_id, ts)
);

-- readings를 하이퍼테이블로 전환
SELECT create_hypertable('readings', 'ts', if_not_exists => TRUE);
