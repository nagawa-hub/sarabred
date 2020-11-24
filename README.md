## Sarabred

## アプリの概要
法人向けの営業担当者が使えるように設計した顧客管理・活動記録アプリです。
ログインすることによって会社のデータを登録ができ、登録されている会社に対していつ、何を行ったかを記録することができます。
また取引ステータスや見込みなども合わせて登録ができるので、優良顧客に対して効果的なアプローチができているかの指標にすることができます。

## URL
http://54.238.18.138/

テスト用アカウント
メールアドレス：sample@sample
パスワード：sample

## 目指した課題解決
前職の職場では、各営業が個別にExcelを使って顧客管理をしていました。
そのため新しく営業に配属した当初はどの企業にアプローチを行って良いのか分からず、既に取引中の企業や取引は無くとも別の営業が親しくやりとりを行っている企業に対して、新規のアポイントの電話をしてしまうことなどが多くありました。
営業メンバーがこのアプリを通して顧客の管理、活動履歴を残すことによって、
今どの企業に誰がアプローチしていてどのような状況なのかを営業全体で共有することを目的としています。
また過去の取引情報やランク（見込み）などを併せて登録することで、各営業が優良顧客に効果的なアプローチができているかどうかを活動記録として残し管理することができます。

### 実装予定の機能
ransackを用いた高度な検索機能
名刺管理アプリとの連携

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
