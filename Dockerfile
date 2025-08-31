# nginx 이미지를 기반으로 사용
FROM nginx:alpine

# nginx 설정 파일 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Next.js 빌드 파일을 nginx의 기본 디렉토리로 복사
COPY out/ /usr/share/nginx/html/

# 포트 80 노출
EXPOSE 80

# nginx 시작
CMD ["nginx", "-g", "daemon off;"]
