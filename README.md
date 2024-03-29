## 機能追加(10/25)
カテゴリー別で感想を確認できる機能を追加しました。
- ユーザー登録していないゲストユーザーはカテゴリー別で感想を確認可能
- ログインユーザーは自分の感想、お気に入り登録した感想をカテゴリー別で確認可能
<br>
写真はログインユーザーがお気に入り登録した感想をカテゴリー(仕事)で確認しています。

![image](https://github.com/mirai-79/book-record/assets/99461088/ffe86f0e-6b96-4ff8-9572-f98f5a50e1a6)
<br><br>

# 本の感想共有アプリ
URL
<br>
https://book-record.com
<br><br>

## アプリの概要
読んだ本の感想を共有できるWebアプリケーションです。
<br>
読書が趣味なので、読んだ本の感想を記録することができて、他の読者さんの感想も共有できるWebアプリケーションを作りたいと思いました。
<br><br>

## 作成期間
2023年5月4日~2023年9月26日
<br>
何も手を付けなかった時があったり、問題に直面したときに解決に時間を要した時が多々あったりして
時間がかかりましたが、楽しかったです。もっと周辺知識の取得やスキルを上げたい思いが強くなりました。
<br><br>
## アプリ作成の記録(コミット履歴)
[最古のコミット履歴から](https://github.com/mirai-79/book-record/commits?after=518a3dd82e6eb9042ec2a48c5c91a132e7bffc14+279&author=mirai-79)
<br>
[最新のコミット履歴から](https://github.com/mirai-79/book-record/commits?author=mirai-79)
<br><br>

## 使用技術
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

## Laravelアーキテクチャ
コードの拡張性と可読性を意識して、データを画面に映すまでの処理を役割分担した場所に記載しています。
<img  alt="architecture" src="https://github.com/mirai-79/book-record/assets/99461088/b735cd05-ec55-4f22-af58-f74265efe1b4">
<br><br>

## インフラ構成図
<img alt="diagram" src="https://github.com/mirai-79/book-record/assets/99461088/a875deb6-551d-41cc-a0e8-f8460ab70f6d">
<br><br>

## ER図
![book-recordのER図](https://github.com/mirai-79/book-record/assets/99461088/f4a90567-c7eb-469b-9b1b-a61267036c3c)

<br><br>

## テーブル定義書
:orange_book:<ins>**book_recordsテーブル**</ins>
<img alt="book-records1" src="https://github.com/mirai-79/book-record/assets/99461088/d57e4532-9478-4e9a-8df9-92ed12867295">
<img alt="book-records2" src="https://github.com/mirai-79/book-record/assets/99461088/b4b01976-5b88-4d4d-89e0-e3539835c012">
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
## アプリの特徴

レスポンシブデザイン対応

### 本の感想の共有(ホーム画面)
ユーザーが投稿した感想を一覧で見ることができます。
ユーザー登録をしないゲストユーザーはホーム画面のみ見ることができます。
<img alt="home" src="https://github.com/mirai-79/book-record/assets/99461088/63180613-ca4c-46c4-b4c4-142b9689e270">
<br>

### 自分の感想一覧
自分が投稿した感想を一覧で見ることができます。
<img alt="my-record" src="https://github.com/mirai-79/book-record/assets/99461088/7643b89c-70d9-43ef-8053-feac7bad9932">
<br>

### お気に入り一覧
自分がお気に入りした感想を一覧で見ることができます。
<img alt="my-favorite" src="https://github.com/mirai-79/book-record/assets/99461088/05b54696-35d8-47b6-ac66-e70d1b8b93ea">
<br>

### 指定ユーザーの感想一覧
感想一覧のユーザーをクリックすると、そのユーザーの感想一覧を見ることができます。
<img alt="user-record" src="https://github.com/mirai-79/book-record/assets/99461088/814d94aa-9d26-4b7c-bd72-4b9be9e44606">
<br>

#### 指定ユーザーの感想一覧
感想のユーザーをクリックすると、そのユーザーが投稿した感想を一覧で見ることができます。
<br>

### 本の検索
本のタイトルまたは著者名で本を検索し、キーワードに関連する本を一覧表示します。
<br>
google books APIsのリクエスト超過で本の検索ができなくなることが9月頃から頻繁にあり、色々調べたつもりですが、分からず、
時間をおくと利用できるようになるというなさけない実装になり悔しいです。
<img alt="book-search" src="https://github.com/mirai-79/book-record/assets/99461088/a6f62bad-83b4-42a5-b040-4376f6cf0ad5">
<br>

### 感想登録、この本の感想を登録する
本の検索結果または、感想一覧の「この本の感想を登録する」から感想を登録できます。
<img alt="record-create" src="https://github.com/mirai-79/book-record/assets/99461088/ef86840d-4924-44ee-8b16-3f486a41b60e">
<br>
### 自分の感想の編集
自分が投稿した感想を編集することができます。
<img alt="record-edit" src="https://github.com/mirai-79/book-record/assets/99461088/7d19241c-98fb-4f1d-a783-f3b6bce535bf">
<br>

### 自分の感想の削除
自分が投稿した感想を削除(ダイアログ)することができます。
<img alt="record-delete" src="https://github.com/mirai-79/book-record/assets/99461088/6a364f1c-ade4-495a-96ad-b76b6fceeba1">
<br>

### お気に入り登録、他の人の感想から感想記録
自分の感想や他のユーザーの感想を星形アイコンをクリックでお気に入り登録、削除することができます。
登録したお気に入りは「お気に入り一覧画面」から確認することができます。
<img alt="favorite1" src="https://github.com/mirai-79/book-record/assets/99461088/8540f979-b7f3-4c7c-900e-8226e2f6ae26">
<br><br>
<img alt="fovorite2" src="https://github.com/mirai-79/book-record/assets/99461088/315127de-225d-4919-92b1-4a09f1326394">
<br>

### エラー画面(例:404エラー)
401,403,404,419,429,500,503のエラー画面を作成しました。
<br>
画像は404エラーの場合です。
<img alt="error" src="https://github.com/mirai-79/book-record/assets/99461088/4bbe3e1e-3e5c-41e0-8bc8-9d3a0b99b977">
<br>

### ログイン
ログイン画面です。
<img alt="login" src="https://github.com/mirai-79/book-record/assets/99461088/2ff84145-8f1c-4c1b-965d-ecde3a23db67">
<br>

### ユーザー登録
ユーザー登録画面です。
<img alt="user-registration" src="https://github.com/mirai-79/book-record/assets/99461088/2ecc3f2c-c1fa-412b-b537-1f040210bedd">
<br>

### プロフィール編集
プロフィール編集画面です。
<img alt="profile-edit" src="https://github.com/mirai-79/book-record/assets/99461088/79e85364-0d91-4da3-b162-0c72c66dd68d">
<br>

### アカウント削除
アカウント削除画面です。削除すると該当ユーザーに紐づいた感想も削除されます。
<img alt="profile-delete" src="https://github.com/mirai-79/book-record/assets/99461088/51b7d9c3-9d38-4bd8-88fa-00fff1bf1c99">
<br>

## アプリの機能一覧

### メイン機能
- 本検索(Google Books APIs)
- 感想記録(CRUD処理)
- タブでみんなの感想一覧、自分の感想一覧、お気に位置一覧切り替え(登録件数が20件を超えたらページネーション)
- お気に入り登録、削除

### 認証機能
- ユーザー登録、ログイン、ログアウト
- ゲストログイン(みんなの感想一覧のみ閲覧)
- プロフィール編集
- アカウント削除

<br><br>

## 工夫したところ
- FormRequestクラスを用いたバリデーションの実装
- 他の人の感想に読んだ本がある場合、他の人の感想から感想登録できる実装
- Google Books APIsが返す一意の本のIDをBooksテーブルに保存して他のユーザーが既にBooksテーブルにある本を感想登録したいときにBooksテーブルから本の情報をもってくる実装
- 一覧画面系ではEloquentでwith(eagerロード)を使用してクエリ発行回数を減らす実装
- Viewのコンポーネントを適宜実装
- サービス層でトランザクション処理とtry~catch実装
- 各エラー画面の作成してreport($e)でログにエラー内容を確認できる実装
- ユーザー登録をしなくてもみんなの感想や指定ユーザーの感想を見ることができるように実装
<br><br>

## 苦労したところ
- Google Books APIsが返す本の情報が、本によって出版日がない、出版日の表示形式が違うなど一律ではない場合対応の処理
- AWSのec2へのデプロイ及びHTTPS化対応
- 本の検索結果が0件の時とGoogle Books APIsのリクエスト超過時の画面案内までの実装
- テストコードの実装(課題があるテストコードだと思っています)
<br><br>

## 課題
- google books APIsのリクエスト超過で本の検索ができなくなることがある
- PHPファイルの一番最初にdeclare(strict_types=1)と書き、関数の引数や戻り値で型を宣言した堅牢なプログラムを書けていなかった
- サービス層に一部DB操作が行われていてアーキテクチャが徹底されていない
- 本の感想からその本の購入ページまで遷移できると面白い
- よく読まれる感想や、同じ本の感想についてはトグルで表示するなどの配慮
- APIでとってくる実装について例外処理が充実しているか
- インデックスを使用するなどのパフォーマンスチューニング
<br><br>

## 開発環境構築

### 環境

- Laravel v10.9.0
- WSL2
- Ubuntu22.04
- Doker Desktop

### 手順

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

    http://localhost/

- Laravel公式デバッグアシスタント telescope

    http://localhost/telescope/


- 停止
    ```
    sail down
    ```
- データベースを消して停止したい場合
    ```
    sail down -v
    ```
