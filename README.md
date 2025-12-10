 HEAD

 미니 CLI 툴 프로젝트



\# 🛠️ Mini CLI Tool Project



 이 과제는 개발 실행 도커 깃 문서화 배포의 전체 오픈소스 개발 흐름을 나타낸 과제입니다.



\## 📁 프로젝트 구조



폴더구조

mini-cli/

├─ src/

│ └─ mini.c

├─ docs/

│ └─ images/

│ ├─ linux-run.png

│ ├─ docker-build.png

│ └─ docker-run.png

├─ Dockerfile

├─ README.md

└─ LICENSE

\## 🚀 1. Mini 프로그램

\#include <stdio.h>

int main() {

    printf("최강 젠지\\n");

    printf("나는 문어\\n");

return 0;

}





\## 🧪 2. Linux 실행 결과



실행 명령어



\# 프로그램 컴파일

gcc src/mini.c -o mini



\# 프로그램 실행

./mini



실행화면 캡처



!\[Linux 실행 결과](docs/images/linux-run1.png)

!\[Docker Build](docs/images/docker-build1.png)

!\[Docker Run](docs/images/docker-run1.png)



\## 3. Dockerfile 및 실행 결과



FROM ubuntu:24.04



WORKDIR /app



COPY src/mini.c .



RUN apt-get update \&\& \\

    apt-get install -y gcc \&\& \\

    gcc mini.c -o mini



CMD \["./mini"]



Docker 이미지 빌드



docker build -t mini-cli .





Docker 실행

 

docker run --rm mini-cli



실행 화면 캡처



Docker Build: docs/images/docker-build1.png

Docker Run: docs/images/docker-run1.png



\## 4. GitHub 버전관리 내역





\### 체크리스트

\- \[0] Commit 5회 이상

\- \[0] Branch 생성

\- \[0] Branch → main Merge

\- \[0] 의미 있는 Commit 메시지



feature/docs-update 브랜치를 생성하여 README.md 문서를 수정하고,

해당 브랜치를 main 브랜치로 Pull Request를 통해 Merge하였습니다.

또한 기능 구현, 문서 업데이트 등 의미 있는 단위로 총 5회 이상의 커밋을 수행했습니다.



**!\[Git Commit Log](docs/images/git-log.png)**



본 프로젝트는 MIT License를 적용합니다.





배운 점:

오픈소스 프로젝트 개발 흐름(작성 → 컴파일 → Docker 패키징 → GitHub 배포)을 직접 경험하면서 전체적인 개발 프로세스를 이해할 수 있었다. Dockerfile 작성과 이미지 빌드 과정에서 동작 원리를 자연스럽게 익힐 수 있었다.



어려웠던 점:

Docker build 과정에서 apt 관련 오류가 발생해 해결하는 것이 어려웠고, GitHub의 브랜치/PR 개념을 실제로 적용하면서 구조를 이해하는 데 시간이 필요했다.



흥미로웠던 부분:

WSL2에서 Linux 환경을 사용해보는 것과, 내가 만든 코드가 Docker 이미지로 패키징되어 컨테이너에서 실행되는 과정이 흥미로웠다.



개선하고 싶은 점:

프로그램 기능을 좀 더 확장하거나, Dockerfile을 더 경량화해 효율적인 이미지를 만드는 작업을 시도해보고 싶다.

>>>>>>> 88b80e9 (docs: finalize README for submission)
