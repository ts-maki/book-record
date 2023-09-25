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

## 3. アーキテクチャ

## 4. インフラ構成図

## 5. ER図
![book-recordのER図](https://github.com/mirai-79/book-record/assets/99461088/f4a90567-c7eb-469b-9b1b-a61267036c3c)

<br><br>

## 6. テーブル定義書
:orange_book:<ins>**book_recordsテーブル**</ins>
<img alt="books-record1" src="https://github.com/mirai-79/book-record/assets/99461088/a51c62bb-f416-46a0-ae9d-3b354ef95f47">
<img alt="books-records2" src="https://github.com/mirai-79/book-record/assets/99461088/d1efc17f-0be3-430a-80e2-158ce33ab84e">
<br><br>
:orange_book:<ins>**booksテーブル**</ins>
<img alt="books1" src="https://github.com/mirai-79/book-record/assets/99461088/111f70cd-500f-4945-b7bf-310273f539a5">
<img alt="books2" src="https://github.com/mirai-79/book-record/assets/99461088/f8f19360-bfc5-4dc2-a4c5-a4877510f6c7">
<br><br>
:orange_book:<ins>**categoriesテーブル**</ins>
<img  alt="categories1" src="https://github.com/mirai-79/book-record/assets/99461088/6d836707-b6a0-4836-a0c0-cd4ea8645293">
<img  alt="categories2" src="https://github.com/mirai-79/book-record/assets/99461088/3aaab4b8-7d7e-4fe5-be07-73721d78bf0b">
<br><br>
:orange_book:<ins>**likesテーブル**</ins>
<img  alt="likes1" src="https://github.com/mirai-79/book-record/assets/99461088/a9efa3d1-4d01-45fa-829e-c9c0c0f1bc77">
<img  alt="likes2" src="https://github.com/mirai-79/book-record/assets/99461088/1960003c-e65e-4969-8a5f-bb3ef31659c1">
<br><br>
:orange_book:<ins>**usersテーブル**</ins>
<img  alt="users1" src="https://github.com/mirai-79/book-record/assets/99461088/3e647852-57dc-49f6-8092-98c2a748dd83">
<img  alt="users2" src="https://github.com/mirai-79/book-record/assets/99461088/aa3be275-f88d-474a-a083-b5a80b4d35d8">

<br><br>
## 7. アプリの特徴

レスポンシブデザイン対応

### 本の感想の共有(ホーム画面)
ユーザーが投稿した感想を一覧で見ることができます。
ユーザー登録をしないゲストユーザーはホーム画面のみ見ることができます。
<br>

### 自分の感想一覧
自分が投稿した感想を一覧で見ることができます。
<br>

### お気に入り一覧
自分がお気に入りした感想を一覧で見ることができます。
<br>

### 本の検索
本のタイトルまたは著者名で本を検索し、キーワードに関連する本を一覧表示します。
<br>

### 自分の感想の編集、削除
自分が投稿した感想を編集、削除(ダイアログ)することができます。
<br>

### お気に入り登録、他の人の感想から感想記録
自分の感想や他のユーザーの感想をお気に入り登録、削除することができます。
登録したお気に入りは「お気に入り一覧画面」から確認することができます。
<br>

### エラー画面(例:404エラー)

## 8. アプリの機能一覧

### メイン機能
- 本検索(Google Books APIs)
- 感想記録(CRUD処理)
- タブでみんなの感想一覧、自分の感想一覧、お気に位置一覧切り替え(ページネーション)
- お気に入り登録、削除

### 認証機能
- ユーザー登録、ログイン、ログアウト
- ゲストログイン(みんなの感想一覧のみ閲覧)
- プロフィール編集
- アカウント削除

<br><br>

## 9. 開発環境構築

#### 環境

- Laravel v10.9.0
- WSL2
- Ubuntu22.04
- Doker Desktop

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

- データベース作成
    ```
    sail artisan migrate
    ```
- データベースに初期データ投入
    ```
    sail artisan db:seed --class=CategoriesSeeder
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
