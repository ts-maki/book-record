### 簡易な説明(本番環境にデプロイまにあわず…)
本の感想を共有するアプリ
- ユーザー登録したユーザーはGoogle Books APIsを使用して検索キーワードの本の情報を取得して、感想登録を行い、ユーザー間で共有する。
- 感想の登録、編集、削除、お気に入り登録ができる。
- ユーザー登録していないユーザーはみんなの感想や指定ユーザーの感想を閲覧できる。

#### 補足
- 急ぎ足の説明ですがAWS EC2 dockerにでプロして本番環境でアプリが確認できるようになったら細かくかきたい
- 作成過程の履歴は[こちら](https://github.com/mirai-79/book-record/commits?author=mirai-79)

#### 環境
- Laravel sail
- Alpine.js
- Docker
- mysql
- phpmyadmin
- Laravel telescope

#### データベース設計
![みんなの感想のER図](https://github.com/mirai-79/book-record/assets/99461088/40cec0a9-71c3-4320-982d-deabde25f7f1)

#### 画面(ログインユーザー)
##### 一覧画面
![image](https://github.com/mirai-79/book-record/assets/99461088/c6fc6b1c-919e-44eb-997c-83bdddbf81f7)

##### 自分の感想
![image](https://github.com/mirai-79/book-record/assets/99461088/66356692-0fda-43b5-b00c-918a49402fc4)

##### お気に入り一覧
![image](https://github.com/mirai-79/book-record/assets/99461088/ff9005c5-050c-4fb0-b2b4-70a50cc4f49f)

##### 本の検索
![image](https://github.com/mirai-79/book-record/assets/99461088/79319d89-d2d9-41e4-aa6d-12851c090f43)
![image](https://github.com/mirai-79/book-record/assets/99461088/48d9e0c4-6acb-4b76-8bd5-bbd1edff9c7f)

##### 感想の登録
![image](https://github.com/mirai-79/book-record/assets/99461088/73cee4a0-43a2-4a46-bc6b-0d1efd287b12)

##### 感想の編集
![image](https://github.com/mirai-79/book-record/assets/99461088/76547cb9-1260-45d8-8412-a487789dfc28)

##### 感想の削除
![image](https://github.com/mirai-79/book-record/assets/99461088/3fe7a877-6c05-42ed-abd2-94284f949694)

#### 画面(ゲストユーザー)
##### 指定のユーザーの感想一覧
![image](https://github.com/mirai-79/book-record/assets/99461088/127c2ada-3584-42f1-a6b6-a3b8927c6c58)








