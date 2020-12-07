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

### トップページ
<img width="1313" alt="6c180ac3a92968e6a8135005ab49a5c0" src="https://user-images.githubusercontent.com/72905756/101322265-1605b280-38aa-11eb-9e38-8515d2f65a1c.png">

### 会社詳細ページ
<img width="1253" alt="c06e5e2bf81174c16caddd0a9b828ae8" src="https://user-images.githubusercontent.com/72905756/101322077-c0c9a100-38a9-11eb-8ec4-d042c6e86ea5.png">

### 会社登録ページ
<img width="1111" alt="ee17cefd257978efe5fec331a8c7d1cb" src="https://user-images.githubusercontent.com/72905756/101322134-df2f9c80-38a9-11eb-8ff5-d625a9d99f43.png">

## テーブル設計

### ER図
<img width="647" alt="2ad7c2883a53ff1501d1a3d757f86cbd" src="https://user-images.githubusercontent.com/72905756/101322465-6c72f100-38aa-11eb-8dc7-0e6fa262a4b8.png">

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

