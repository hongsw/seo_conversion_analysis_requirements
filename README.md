# SEO Content Conversion Analytics

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](CONTRIBUTING.md)

## 📊 프로젝트 소개

SEO Content Conversion Analytics는 콘텐츠 페이지의 SEO 성과와 구매 전환율을 분석하여 데이터 기반 콘텐츠 최적화를 지원하는 오픈소스 프로젝트입니다. 실시간 대시보드, 자동화 리포트, 다양한 데이터 소스 연동 등 콘텐츠 마케팅 및 이커머스 운영에 필요한 핵심 분석 기능을 제공합니다.

## 🎯 주요 기능

- **콘텐츠 트래픽 분석**: 페이지별 유입량, 체류시간, 유입경로 추적
- **전환율 분석**: 콘텐츠에서 구매 페이지로의 전환 측정 및 분석
- **SEO 성과 추적**: 검색어별 성과, 순위 변화 모니터링
- **실시간 대시보드**: 직관적인 데이터 시각화
- **자동화된 리포트**: 정기적인 성과 보고서 생성

## 🛠️ 기술 스택

- **백엔드**: Python, Django, Pandas, NumPy
- **프론트엔드**: React, Chart.js, Vite
- **데이터베이스**: PostgreSQL (운영), SQLite (개발)
- **배포/운영**: Docker, Docker Compose
- **기타**: Google Analytics API, Google Search Console API

## 🚀 설치 및 실행 방법

### 1. 저장소 클론
```bash
git clone https://github.com/yourusername/seo-content-conversion-analytics.git
cd seo-content-conversion-analytics
```

### 2. 백엔드 설정
```bash
cd backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cp ../.env.example ../.env  # 환경 변수 파일 복사 및 수정
python manage.py migrate
python manage.py runserver
```

### 3. 프론트엔드 설정
```bash
cd ../frontend
npm install
npm run dev
```

### 4. Docker로 전체 실행
```bash
docker-compose up --build
```

## 📁 폴더 구조

```
seo-content-conversion-analytics/
├── backend/           # 백엔드(Django)
│   ├── app/           # Django 프로젝트
│   ├── collectors/    # 데이터 수집기
│   ├── processors/    # 데이터 처리
│   ├── analytics/     # 분석 엔진
│   └── ...
├── frontend/          # 프론트엔드(React)
│   ├── src/
│   └── ...
├── data/              # 데이터(raw, processed, exports)
├── docs/              # 문서(API, 가이드 등)
├── tests/             # 테스트 코드
├── config/            # 설정 파일
├── landing/           # 정적 소개 홈페이지
├── Dockerfile         # Docker 설정
├── docker-compose.yml # Docker Compose
├── .env.example       # 환경 변수 예시
└── README.md          # 프로젝트 설명
```

## 📈 사용 예시

- **전체 데이터 수집**
  ```bash
  python manage.py collect_data --start-date=2024-01-01 --end-date=2024-12-31
  ```
- **SEO 성과 분석**
  ```bash
  python manage.py analyze_seo --period=monthly
  ```
- **전환율 분석**
  ```bash
  python manage.py analyze_conversion --content-type=blog
  ```
- **리포트 생성**
  ```bash
  python manage.py generate_report --type=monthly --format=pdf
  ```

## 🤝 기여 방법

1. 이슈 확인 또는 새로운 이슈 생성
2. 저장소 Fork
3. 기능 브랜치 생성 (`git checkout -b feature/기능명`)
4. 커밋 (`git commit -m 'Add some feature'`)
5. 브랜치에 푸시 (`git push origin feature/기능명`)
6. Pull Request 생성

### 개발 환경
- 코드 스타일: `black`(Python), `Prettier`(JS), `ESLint`
- 테스트: `pytest`, `npm test`
- 타입 검사: `mypy`

## 📄 라이선스

이 프로젝트는 MIT 라이선스하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 🙏 문의

- 이메일: contact@yourdomain.com
- [GitHub Issues](https://github.com/yourusername/seo-content-conversion-analytics/issues) 