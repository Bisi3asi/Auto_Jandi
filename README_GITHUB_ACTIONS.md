# AUTO_JANDI(for Github Actions)

<br>

### 준비물 (Preparement)
1. yaml file `(.github/workflows/auto_jandi.yaml)`
2. 약간의 레포지토리 세팅 `(a little Repository settings)`
3. Github Actions, Repository 읽기-쓰기 권한이 있는 Github Token `(Github Token with Actions, Repository Read & Write Authorities)`

<br>

### 설정 방법 (Settings)
1. `.github/workflows/auto_jandi.yaml`
   * `Commit Changes` : git config에서 user.name, user.email 수정 (fix user.name, user.email as your own github profile for connection)
   * `Push Changes` : github_token에서 secrets.AUTO_JANDI로 설정 시 secret variable 명을 AUTO_JANDI로 설정해야 함 (if you name github_token as secrets.AUTO_JANDI, you do need to make secret variable name AUTO_JANDI same)
2. `Repository Settings`
   * Actions -> General -> Workflow permissions : check Read and write permissions
3. `Github User Settings`
   1. Developer Settings -> Personal access tokens -> Tokens(classic) / Fine-grained tokens (whatever)-> Generate new tokens
   2. Check read and write access to actions, actions variable, code, secrets, and workflows

<br>
2번, 3번 정도는 해석할 줄 알리라 믿겠습니다.
<br>
<br>

### 테스트 방법 (How to Test)
* Repository -> Actions -> auto_jandi -> Run workflow -> run workflow
* 위는 수동으로 실행하는 방법입니다. (this is how to test the workflow manually)

### 유의사항 (Notioce)
* Github Actions의 cron은 UCT를 기준으로 합니다. (Github Actions cron follows UCT time)
* 따라서, 한국 시간 기준으로 23:50분을 설정하고자 한다면 9시간 앞당긴 14:50으로 설정해야 합니다.