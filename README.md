# テーブル設計

## users テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false |
| nickname           | string     | null: false |
| birthday           | date       | null: false |

### Association

- has_many : tourings
- has_many : rides
- has_many : comments

 ## rides テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| plan               | string     | null: false |
| displacement_id    | integer    | null: false |
| text               | text       | null: false |
| style_id           | integer    | null: false |
| term_id            | integer    | null: false |
| area_id            | integer    | null: false |
| day_id             | date       | null: false |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to : user
- has_one : touring

## comments テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| text               | text       | null: false |
| user               | references | null: false |
| ride               | references | null: false |

### Association

- belongs_to : user
- belongs_to : ride

## tourings テーブル
| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| user               | references | null: false, foreign_key: true |
| ride               | references | null: false, foreign_key: true |

### Association

- has_many : user
- belongs_to : ride


## user_tourings テーブル
| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| user               | references | null: false, foreign_key: true |
| touring            | references | null: false, foreign_key: true |