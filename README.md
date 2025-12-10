## Troubleshooting

- Docker build 시 apt 관련 오류가 발생할 수 있으며,
  이를 해결하기 위해 apt 대신 apt-get 명령어를 사용했습니다
- Ubuntu 24.04 환경에서 발생하는 keyring 문제를 해결하기 위해
  RUN apt-get update && apt-get install -y gcc 방식으로 수정했습니다.
## Update

Added documentation for Docker build and run.

### 개선 사항: 프로그램 구조 설명 추가
### Docker Image Optimization 가능성
### Git 과정 요약: 브랜치 전략 및 커밋 흐름
### 추가 노트: 향후 확장 아이디어
