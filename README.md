# Sarabred

##　アプリの概要
法人向けの営業担当者が使えるように設計した顧客管理・活動記録アプリです。
ログインすることによって会社のデータを登録ができ、登録されている会社に対していつ、何を行ったかを記録することができます。
また取引ステータスや見込みなども合わせて登録ができるので、優良顧客に対して効果的なアプローチができているかの指標にすることができます。

## URL
http://54.238.18.138/

テスト用アカウント
メールアドレス：sample@sample
パスワード：sample

## テーブル設計
### usersテーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| email              | string  | null: false unique: true |
| encrypted_password | string  | null: false              |
| name               | string  | null: false              |

#### Association
- has_many :companies
- has_many :activities

### companiesテーブル

| Column           | Type       | Options                       |
| ---------------- | ---------- | ----------------------------- |
| company_name     | string     | null: false                   |
| phone_number     | string     | null: false                   |
| address          | string     |                               |
| building_name    | string     |                               |
| nearest_station  | string     |                               |
| industry_id      | integer    | null: false                   |
| capital_stock_id | integer    |                               |
| employee_id      | integer    |                               |
| status_id        | integer    | null: false                   |
| rank_id          | integer    | null: false                   |
| user             | references | null: false foreign_key: true |

#### Association
- belongs_to :user 
- has_many :activities
 
### activitiesテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| activity_day | date       | null: false                   |
| client_name  | string     | null: false                   |
| memo         | text       |                               |
| user         | references | null: false foreign_key: true |
| company      | references | null: false foreign_key: true |

#### Association
- belongs_to :user
- belongs_to :company
