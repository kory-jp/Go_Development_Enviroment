# ベースイメージとして公式のGolangイメージを使用
FROM golang:1.20-alpine


# 作業ディレクトリを設定
WORKDIR /app

# RUN go install github.com/go-delve/delve/cmd/dlv@v1.21.2 && \
#     go install golang.org/x/tools/gopls@v0.15.3

# COPY ./go.mod .
# COPY ./go.sum .

# RUN go mod download

# COPY ./ .

# CMD ["/bin/sh"]