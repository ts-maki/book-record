# 本の感想共有アプリ

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
- MySQL 8.0.32

### インフラ
- docker
- AWS
- nginx

### その他
- Git 2.34.1 / Github
- PHPMyadmin
- Visual Studio Code
- Googleマテリアルアイコン

<br><br>

## 3. インフラ構成図


## 4. ER図
![book-recordのER図](https://github.com/mirai-79/book-record/assets/99461088/f4a90567-c7eb-469b-9b1b-a61267036c3c)

<br><br>

## 5. テーブル定義書
books_recordsテーブル
<img width="326" alt="image" src="https://github.com/mirai-79/book-record/assets/99461088/634bcfe7-21be-46eb-8ca8-d4900ee70bb3">

<br><br>
## 6. アプリの特徴

レスポンシブデザイン対応

### 本の感想の共有

<br>

### 自分の感想の編集、削除

<br>

### お気に入り登録、他の人の感想から感想記録

<br>

### 各HTTPステータスごとのエラー画面

## 6. アプリの機能一覧

### メイン機能
- 本検索(Google Books APIs)
- 感想記録(CRUD処理)
- タブでみんなの感想一覧、自分の感想一覧、お気に位置一覧切り替え(ページネーション)
- お気に入り登録、削除
- 

### 認証機能
- ユーザー登録、ログイン、ログアウト
- ゲストログイン(みんなの感想一覧のみ閲覧)
- プロフィール編集
- アカウント削除

<br><br>

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
