# Auto_Jandi
> **레포 자동 잔디 심기 툴, github auto commit scheduler**

<br>

### 제작 의도
1. `bash`, `linux ubuntu` 개인 학습용으로 제작했습니다.
2. `cron`이 걸리는지 궁금했습니다.
3. 이거 쓰시더라도 개인 발전을 위한 잔디를 심으시길 권장드립니다(제작자부터)

<br>

### 준비물
1. 본 레포의 shell script `(auto_jandi.sh)`
2. 스케줄러 설정을 위한 `bash`, `linux ubuntu 환경`
3. 일말의 죄책감

<br>

### 설정 방법
1. `git clone` or `fork`, whatever
2. `auto_jandi.sh`의 주석을 참고해 입맛에 맞게 수정
   * follow the `auto_jandi.sh` file notes and customize it
3. `linux` 환경 실행 (MS의 경우 `bash`에서 `wsl` 등 활용)
   * move to `Linux` OS terminal (`e.g. Windows, use WSL`)
4. 현 레포 디렉토리로 이동
   * move to local repository
5. .sh 실행 권한 설정
   * configure execute authorization on .sh file
   ```bash
   $ chmod +x auto_jandi.sh
   ```
6. cron 설정
   * configure cron
   ```bash
   $ crontab -e
   
   # 편집기 선택 후 sh 파일 스케줄링 설정(after selecting editor, modify scheduling jobs on cron)
   # 이하 내용 추가 (add this on crontab)
   # 예시는 매 23시 50분에 해당 쉘 파일을 실행할 것이라는 의미 (this means shell script will be activated everyday 23:50)  
   $ 50 23 * * * /your/path/auto_jandi.sh
   
   # crontab 적용 여부 확인(confirm apply changes on crontab)
   $ crontab -l
   ```
7. 작업 스케줄러 설정 (Windows Task Scheduler)
   * 작업 스케줄러 라이브러리 -> 작업 만들기 (make new task)
     * 일반 : 이름 지정 (name)
     * 트리거 : 새로 만들기 -> 로그온 할 때 (trigger : when log on)
     * 동작 : 프로그램 스크립트 : wsl 입력 (program script : wsl)

### 테스트 방법 / 참고사항 (how to test, Additional Info)
* bash 에서 `auto_jandi.sh` 실행해보기 (test execute auto_jandi.sh first)
* `cron` 설정 후 테스트해보기 (test cron yourself)
* 사실 cron 필요 없을 듯.. 해보니 Windows는 작업 스케줄러가 대체 가능 (Windows task scheduler can replace linux cron)
* PC 전원이 OFF 된 상태에서는 당연히 작동 안함, 절전은 가능 (this task is impossible when PC turned off)
* Github Actions 쓰세요 (I recommend Github Actions serverless module, it will be easier)
