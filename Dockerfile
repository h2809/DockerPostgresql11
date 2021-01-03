FROM postgres:11

ENV POSTGRES_USER="postgres" \
    POSTGRES_PASSWORD="postgres" \
    # localeをOS非依存にするためCを指定
    POSTGRES_INITDB_ARGS="--encoding=UTF-8 --locale=C"

# ホストのinit.shをコンテナへコピー
COPY init.sh /docker-entrypoint-initdb.d/
