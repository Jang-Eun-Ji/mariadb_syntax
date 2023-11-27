-- 리눅스에서 깃 ,마리아 디비 설치하는 법

sudo apt - get update
-- 비밀번호
sudo apt - get upgrade

sudo apt -get install -y mariadb -server

sudo systemctl start mariadb

sudo systemctl enable mariadb

sudo mariadb -u root -p

create database board;

use board;

exit;

---깃으로 데이터베이스 만들기
git clone 레파지토리주소

cd 이동할폴더

sudo mysql -u root -p board < 덤프파일명

scp: 파일전송관련 명령어 - 내 컴퓨터 -> 원격지원컴퓨터