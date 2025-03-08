# 環境構築

## 手順

### Dockerfile

```
# ベースイメージとして公式のGolangイメージを使用
FROM golang:1.20-alpine


# 作業ディレクトリを設定
WORKDIR /app

```

### docker-compose.yml

```
services:
  app:
    build:
      context: .
      dockerfile: ./Dockerfile
    ports:
      - 8080:8080
    volumes:
      - ./:/app
    tty: true
```

### イメージビルド、イメージの起動

```
docker compose build

docker compose run --rm app sh
```

### goの初期設定

```
go mod init app
touch go.sum

// コンテナを閉じる
exit
```

### Dockerfileの再編集

コメント以外のコメントアウトを外す

```
# ベースイメージとして公式のGolangイメージを使用
FROM golang:1.20-alpine


# 作業ディレクトリを設定
WORKDIR /app

COPY ./go.mod .
COPY ./go.sum .

RUN go mod download

COPY ./ .

CMD ["/bin/sh"]
```

### 再ビルド、再実行

```
docker compose build

docker compose up -d
```

### コンテナログイン

```
docker compose run -it app 
```