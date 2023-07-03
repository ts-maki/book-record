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
![image](https://github.com/mirai-79/book-record/assets/99461088/8756c801-44a9-4734-86e6-e2c98f4dbb78)

##### お気に入り一覧
![image](https://github.com/mirai-79/book-record/assets/99461088/486b6eb0-7c28-42ca-80fc-eb0730e38890)

##### 本の検索
![image](https://github.com/mirai-79/book-record/assets/99461088/21cd61a4-1793-4971-8ec9-720a03571d22)
![image](https://github.com/mirai-79/book-record/assets/99461088/d32ad23e-4e49-4dae-a5f5-96271cb162b8)

##### 感想の登録
![image](https://github.com/mirai-79/book-record/assets/99461088/8d0df864-9745-48dc-8710-53aca7975998)

##### 感想の編集
![image](https://github.com/mirai-79/book-record/assets/99461088/79a1be6b-9adb-4e14-a795-fa98002d8dd5)

##### 感想の削除
![image](https://github.com/mirai-79/book-record/assets/99461088/d196a84f-df05-4030-8322-533a049ee144)

#### 画面(ゲストユーザー)
##### 指定のユーザーの感想一覧
![image](https://github.com/mirai-79/book-record/assets/99461088/e92b731f-d67a-4ef6-aa98-8203edc02a57)








