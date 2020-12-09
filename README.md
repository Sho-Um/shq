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


