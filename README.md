# 本の感想記録アプリ

## 1. アプリの概要
読んだ本の感想を共有できるWebアプリケーションです。
<br>
読書が趣味なので、読んだ本の感想を記録することができて、他の読者さんの感想も共有できるWebアプリケーション
を作りたいと思いました。

## 2. 使用技術
### フロントエンド
- HTML
- CSS, Tailwind CSS
- Alpine.js

### バックエンド
- PHP 8.2.8
- Laravel 10.9.0
- MySQL 8.0

### インフラ
- docker
- AWS
- -nginx

### その他
- Git
- PHPMyadmin
- Vscode


### 開発環境構築

#### 環境

Laravel v10.9.0

WSL2

Ubuntu22.04

Doker Desktop


#### 手順

- \\wsl.localhost\Ubuntu-22.04\home\任意のフォルダにgithubのリポジトリをクローン
    ```
    git clone https://github.com/mirai-79/book-record.git book-record
    ```
- ファイル「.bashrc」の最後に下記を追記
    ```
    alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
    ```
- ディレクトリに移動
    ```
    cd book-record
    ```
- Composerのパッケージのインストール
    ```
    docker run --rm \ -u "$(id -u):$(id -g)" \ -v $(pwd):/var/www/html \ -w /var/www/html \ laravelsail/php82-composer:latest \ composer install --ignore-platform-reqs
    ```
- ファイル「.env」を作成して「.env.example」の内容をコピーして貼り付け

- .envファイルのDB_HOSTをmysqlに変更

    DB_HOST=mysql

- laravelのLogを日ごとに出力する(好み)

    LOG_CHANNEL=daily
- 起動
    ```
    sail up -d
    ```
- APP_KEY更新
    ```
    sail php artisan key:generate
    ```

- SQLファイルをphpMyadminにインポート

    http://localhost:8080/
    
    ※Docker起動時にテストデータを投入するinitSQLに変更予定
- パッケージをインストール
    ```
    sail npm install
    ```
- 開発環境をローカルにビルド(ホットリロード)
    ```
    sail npm run dev
    ```

- 画面にアクセス
    ```
    http://localhost/
    ```
- Laravel公式デバッグアシスタント telescope

    http://localhost/telescope/


- 停止
    ```
    sail down
    ```
