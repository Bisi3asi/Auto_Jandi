#!/bin/bash

# Configure local repository directory
# 로컬 레포지토리 디렉토리 설정
REPO_PATH="C:\Users\kueen\Desktop\Dev\Storage\Auto_Jandi"

# configure .txt file directory
# .txt 파일 디렉토리 설정
FILE_PATH="$REPO_PATH/auto_jandi_log.txt"

# bring current date
# 현재 날짜 가져오기
CURRENT_DATE=$(date +%Y-%m-%d)

# move to repository directory
# 레포지토리 디렉토리 이동
cd $REPO_PATH

# git pull
git pull

# txt 파일이 없으면 생성
# neither txt file, nor auto commit
if [ ! -f $FILE_PATH ]; then
	touch $FILE_PATH
fi

# content of file
# 파일 내용 일일단위 변경(개행 포함)
echo "Jandi automatically Updated on $CURRENT_DATE" >> $FILE_PATH

# git commit and push
# 변경 내용 Git에 커밋 및 푸시
git add $FILE_PATH
git commit -m "Jandi automatically Updated on $CURRENT_DATE (By WSL CRON)"
git push

# echo success message
# 완료 메시지 출력
echo "Jandi automatically Updated on $CURRENT_DATE"
