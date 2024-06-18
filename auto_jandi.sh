#!/bin/bash

# Configure local repository directory
REPO_PATH=~/Desktop/Dev/Storage/Auto_Jandi

# Configure txt file directory
FILE_PATH="$REPO_PATH/auto_jandi_log.txt"

# 현재 날짜 가져오기 
CURRENT_DATE=$(date +%Y-%m-%d)

# 레포지토리 디렉토리 이동
cd $REPO_PATH

# repository pull
git pull

# txt 파일이 없으면 생성
if [ ! -f $FILE_PATH ]; then
	touch $FILE_PATH
fi

# 파일에 날짜 추가
echo "Jandi, $CURRENT_DATE" >> $FILE_PATH

# 변경 내용 Git에 커밋 및 푸시
git add $FILE_PATH
git commit -m "Jandi automatically Updated on $CURRENT_DATE"
git push

# 완료 메시지 출력
echo "Jandi automatically Updated on $CURRENT_DATE"
