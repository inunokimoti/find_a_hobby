# Find a hobby！のER図


## usersテーブル
|Column                                         |
|-----------------------------------------------|
|nickname （string型, NOT NULL）                |
|email （string型, NOT NULL, ユニーク制約）      |
|encrypted_password（string型, NOT NULL）       |
|last_name（string型, NOT NULL）                |
|first_name（string型, NOT NULL）               |
|last_name_kana（string型, NOT NULL）           |
|first_name_kana（string型, NOT NULL）          |
|from_id（integer型, NOT NULL）                 |
|city（string型, NOT NULL）                     |
|number（string型, NOT NULL）                   |
|phone（string型, NOT NULL）                    |
|birthday（date型, NOT NULL）                   | 
|skill（string型, NOT NULL）                    |
|profile（text型, NOT NULL）                    |


### Association

- has_many :hobbies
- has_many :comments

## hobbiesテーブル
|Column                                         |
|-----------------------------------------------|
|where_id（integer型, NOT NULL）                |
|category_id（integer型, NOT NULL）             |
|type（string型, NOT NULL）                     |
|text（text型, NOT NULL）                       |
|cost（integer型）                              |
|count_id（integer型）                          |
|from_id（integer型）                           |
|city（string型）                               |
|user（references型, NOT NULL, 外部キー）        |


### Association

- has_many :comments
- belongs_to :user


## commentsテーブル
|Column                                         |
|-----------------------------------------------|
|comment（text型, NOT NULL）                    |
|hobby（references型, NOT NULL, 外部キー）       |
|user（references型, NOT NULL, 外部キー）        |


### Association

- belongs_to :hobby
- belongs_to :user
