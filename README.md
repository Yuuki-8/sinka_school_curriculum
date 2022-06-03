# sinka_school

簡易的な予約システムを基にしたSINKA SCHOOLの教材です。
このシステムを基に、エンジニアが知っておくべき最低限の技術を学んでいきましょう。
# Features
* 別途資料に沿って進めていくことで、エンジニアに必要な知識が身につきます。
# Requirement

* ruby 2.7.5
* rails 6
* mysql 8.0
* docker
* node v12.22.5
* yarn 1.22.18
# Installation

以下URLからdocker desktopをインストールしてください。

* https://www.docker.com/products/docker-desktop


## Dockerイメージのビルド
```
docker-compose up -d --build
```

## データベース作成

```
docker-compose exec app rails db:create
```
## 静的コード解析

```
docker compose exec app rubocop // チェックのみ
docker compose exec app rubocop -A // 強制修正
```
開発途中で Gemfile を更新したら以下を実行

```
docker compose exec app  bundle install
```
## 開発データ作成

```
docker compose exec app rails db:seed
```
## byebug デバッグ　ログ表示

```
 docker attach shinka_school_app_app_1
```
