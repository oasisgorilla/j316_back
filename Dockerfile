# 베이스 이미지 설정
FROM python:3.12

# 작업 디렉토리 설정
WORKDIR /app

# 필요 패키지 복사 및 설치
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY . .

# 포트노출
EXPOSE 8000

# Django 서버 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000", "--noreload"]
