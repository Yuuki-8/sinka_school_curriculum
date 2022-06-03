# README

## Dockerイメージのビルド
```
docker-compose up -d --build
docker compose exec app bin/setup
```
## webpackインストール

```
docker compose exec app  bundle install
docker compose exec app rails webpacker:install
```

## データベースへアクセス権限付与

```
docker-compose exec db mysql -u root -p -e"$(cat db/grant_user.sql)"
Enter password: db_root_password

docker-compose exec db mysql -u user_name -p -e"show grants;"
Enter password: password

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
