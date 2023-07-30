# users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | unique: true, null: false|
| encrypted_password | string | null: false |


### Association


##  targetテーブル

| Column                  | Type       | Options                       |
| ----------------------- | ---------- | ----------------------------- |
|                         | string     | null: false                   |

### Association

##  targetテーブル

| Column                  | Type       | Options                       |
| ----------------------- | ---------- | ----------------------------- |
|                         | string     | null: false                   |

### Association



## process テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| image  | references |             |
| text   | references | null: false |
|    | references | null: false |

### Association






