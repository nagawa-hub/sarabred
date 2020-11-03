# テーブル設計

## usersテーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| email              | string  | null: false unique: true |
| encrypted_password | string  | null: false              |
| name               | string  | null: false              |

### Association
- has_many :company_users
- has_many :companies, through: company_users
- has_many :activities

## company_usersテーブル(中間テーブル)

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| user    | references | null: false foreign_key: true |
| company | references | null: false foreign_key: true |

### Association
- belongs_to :user
- belongs_to :company

## companiesテーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| company_name  | string  | null: false |
| phone_number  | string  | null: false |
| address       | string  |             |
| building_name | string  |             |
| industry_id   | integer | null: false |
| status_id     | integer | null: false |
| rank_id       | integer | null: false |

### Association
- has_many :company_users
- has_many :users, through: company_users 
- has_many :activities
 
## activitiesテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| date        | string     | null: false                   |
| client_name | string     | null: false                   |
| memo        | string     | null: false                   |
| user        | references | null: false foreign_key :true |
| company     | references | null: false foreign_key :true |

### Association
- belongs_to :user
- belongs_to :company
