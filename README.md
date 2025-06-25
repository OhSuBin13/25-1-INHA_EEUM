# inha-eeum-project

# INHA-EEUM

**Team:** &lt;Inha_eeum&gt; 팀  
**Project:** 환경 데이터 기반 실내 환경 분석 서비스 “Inha-eeum”  
**Project Duration:** 2025.03.18 – 2025.06.22  

**👨‍👩‍👧‍👦 Team Members:** 
- **Mentor:** 김선영 대표님  
- **Frontend (FE):** 이시현  
- **Backend (BE):** 오수빈  

**🖥️ 최종발표 자료:** [📥 최종발표.pptx](https://github.com/OhSuBin13/25-1-INHA_EEUM/blob/main/%5B1%5D%202025-1%ED%95%99%EA%B8%B0%20%EC%BA%A1%EC%8A%A4%ED%86%A4%EB%94%94%EC%9E%90%EC%9D%B8%20%EB%B0%9C%ED%91%9C_%EC%9D%B8%ED%95%98%EC%9D%B4%EC%9D%8C_%EC%A0%84%EC%B2%B4_%EC%88%98%EC%A0%95%EB%B3%B8_4.pptx)  
**📹 시연영상:** [📲 시연영상](https://www.youtube.com/watch?v=7N53MisEojM)

---

## 📌 프로젝트 개요  
ESP32를 활용한 실내 데이터 환경 분석 및 정보 제공 플랫폼입니다.

---
## 🧠 FE 및 CI/CD
| 이시현<br> |
| :----------------: | 
| **Features**<br/>- 프론트 엔드 및 CI/CD 구현 <br/>- **BE**

## 👓 Backend/ ESP32
| 오수빈<br> |
| :----------------: |
| **Features**<br/>- **ESP32, 백엔드 기능 구현** <br/>- BE|

---

## <span style=""> ⚙️ **Tools** </span>



### 🖥 **Communication** </span>

|                            Github                            |                           Discord                            |                            Notion                            |                            Jira                            |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img alt="github logo" src="https://techstack-generator.vercel.app/github-icon.svg" width="65" height="65"> | <img alt="Discord logo" src="https://assets-global.website-files.com/6257adef93867e50d84d30e2/62595384e89d1d54d704ece7_3437c10597c1526c3dbd98c737c2bcae.svg" height="65" width="65"> | <img alt="Notion logo" src="https://www.notion.so/cdn-cgi/image/format=auto,width=640,quality=100/front-static/shared/icons/notion-app-icon-3d.png" height="65" width="65"> |<img alt="Jira logo" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTodTA_uzjXXbVJxfatvmWfGMZoDFJWX_Kl-g&s" height="30" width="50"> |

<br/>



### 🖥 **Frontend**

| React | Vercel | 
| :----: | :--------: |
| <img alt="React" src="https://github.com/user-attachments/assets/5aa92a48-e0ea-4289-93dc-1bef74f9013b" height="65" width="150"> | <img alt="Vercel" src="https://github.com/user-attachments/assets/3c3783c0-c1ab-4e38-ba56-14d58f771f30" height="65" width="150"> |

### 🖥 **Backend**

| FastAPI | Python | TimeScaleDB | Redis | Weather API | K-MEANS | XGBoost | MQTT
| :----: | :--: | :---: | :-------------: | :-: | :------: | :---: | :----: |
| <img alt="FastAPI" src="https://github.com/user-attachments/assets/5bc64242-e0d3-4b1a-942f-dd5153147fc1" width="65" height="30" /> | <img alt="Python" src="https://github.com/user-attachments/assets/512b19c2-7f69-4089-b290-b041240cf13f" width="65" height="65" /> | <img alt="TimeScaleDB" src="https://github.com/user-attachments/assets/62b3ce11-525a-4e21-a980-c375ebee023a" width="65" height="65" /> | <img alt="Redis" src="https://github.com/user-attachments/assets/9fd25f4f-61c0-4002-a4d1-cb7330414ca5" width="65" height="65" /> | <img alt="Weather API" src="https://github.com/user-attachments/assets/3d1f9b58-a284-442d-8187-20f4175f699c" width="65" height="65" /> | <img alt="K-MEANS" src="https://github.com/user-attachments/assets/1c017e05-4953-4974-bdcf-60e8e9f9da01" width="100" height="65" /> | <img alt="XGBoost" src="https://github.com/user-attachments/assets/18c7db92-61ab-4faa-a7f4-b688c4562236" width="100" height="65" /> | <img alt="MQTT" src="https://github.com/user-attachments/assets/136dca6f-a72e-46c9-a623-6f6c340a0b9b" width="100" height="65" /> |

### 🖥 **그외**

| Jenkins | Dokcer | SwaggerUI | EC2 | GitHub Action | 
| :----: | :--: | :---: | :------------: | :-: | 
| <img alt="Jenkins" src="https://github.com/user-attachments/assets/d3ce9486-31cd-4fe2-86ea-3ef193fd52c2" width="100" height="65" /> | <img alt="Docker" src="https://github.com/user-attachments/assets/05c54b97-d410-49df-be89-ad693d2ac0ba" width="100" height="65" /> | <img alt="SwaggerUI" src="https://github.com/user-attachments/assets/b7fe5a33-9227-4459-9ed9-ce0227c2ff25" width="65" height="65" /> | <img alt="EC2" src="https://github.com/user-attachments/assets/ed316203-60cd-4635-891c-5bd459916be9" width="100" height="65" /> | <img alt="GitHub Action" src="https://github.com/user-attachments/assets/1b8323a4-767e-4b81-90a0-53e96a3ca783" width="100" height="65" /> |

---

## 🚀 주요 기능  
- **ESP32 기반 데이터 수집** - MQTT 프로토콜을 통한 데이터 전송
- **FastAPI 기반 데이터 전처리** - IQR 기반 이상치 및 결측치 탐지
- **사용자 인터페이스(UI)** — 분석 결과 시각화  
- **머신러닝** - XGBoost, K-Means 기반 데이터 분석
- **기상청 OpenApi** - 외부 환경 데이터 연동 및 요약 분석

---

## 🛠️ 사용 기술  
- **AI/ML:** XGBoost, K-Means  
- **Frontend:** React, Vercel   
- **Backend:** FastApi
- **Database:** TimescaleDB 
- **Cache:** Redis
- **Deployment:** Docker 

---

## 📈 시연 과정  
1. ESP32를 통한 데이터 수집
2. 전처리 서버 작동 과정    
3. 프론트엔드 실제 과정 

---
 
## 🙏 감사의 글  
멘토 김선영 대표님과 팀원 이시현 학우 덕분에 “INHA-EEUM” 프로젝트를 성공적으로 마칠 수 있었습니다.  
