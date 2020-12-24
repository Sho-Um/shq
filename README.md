# アプリケーションについて

## アプリケーション名

- SHQ

## アプリケーション概要

- 質問者は、質問投稿画面から画像(必須)とコメント(必須)で質問することができる
- アドバイス者は、質問詳細画面から質問に対するアドバイスができる
- 自分の質問一覧は、マイページにて確認することができる
- 質問やアドバイスは、ログインしているユーザーしか行えない
- アドバイスには、任意で画像をつけることができる

## URL

- http://175.41.201.23/

## テスト用アカウント

### 質問者Email
- sthequ1@staherqui.jp

### 質問者Password
- staherqui1

### アドバイザーEmail
- sthequ2@staherqui.jp

### アドバイザーPassword
- staherqui2

## 目指した問題解決
- 個人塾と、塾の生徒をターゲットにつくった
- 考えてもわからない問題があったとき、写真とコメントをうつだけで、すぐに質問ができる
- アドバイスにも写真を含めることができ、言葉だけでは伝わりづらい部分も伝えることができる
- 自分の過去の質問がマイページに表示されるため、復習としても活用できる
- 質問一覧からは、他の人の質問を確認することができ、自分の質問と似たものがあると、自分の疑問解決のヒントになる

## 実装した機能
- サインイン/サインアップ機能
- 質問投稿機能
- アドバイス投稿機能
- 質問一覧表示機能
- ユーザー詳細機能
- 質問詳細機能


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :questions
- has_many :advices

## questions テーブル

| Column        | Type   | Options     |
| ------------  | ------ | ----------- |
| comp_text     | string | null: false |
| incomp_text   | string | null: false |

### Association

- belongs_to :user
- has_many :advices


## advices テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| text        | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| question    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :question


