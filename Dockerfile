# ベースイメージとして公式のGolangイメージを使用
FROM golang:1.20-alpine


# 作業ディレクトリを設定
WORKDIR /app

# COPY ./go.mod .
# COPY ./go.sum .

# RUN go mod download

# COPY ./ .

# CMD ["/bin/sh"]