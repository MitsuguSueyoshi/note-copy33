# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## notes table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|category|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :magazines, through: :articles
- has_many :likes, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :images, dependent: :destroy


## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false|
|password|string|null: false|
|main_image|string||
|header_image|string||
|self_introduction|text||

### Association
- has_many :notes, dependent: :destroy
- has_many :magazines, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :relationships
- has_many :followings, through: :relationships, source: :follow
- has_many :reverses_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
- has_many :followers, through: :reverses_of_relationship, source: :user


## relationships table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|follow_id|integer|null: false, foreign_key:{to_table: users}|

### Association
- belongs_to :user
- belongs_to :follow, class_name: 'User'


## magazines table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|header_image|string||
|description|text||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :notes, through: :articles


## articles table
|Column|Type|Options|
|------|----|-------|
|note_id|integer|null: false, foreign_key: true|
|magazine_id|integer|null: false, foreign_key: true|

### Association
- belongs_to user
- belongs_to magazine


## likes table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|note_id|integer|null: false, foregin_key: true|

### Association
- belongs_to :user
- belongs_to :note


## comments table
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|note_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :note


## images table
|Column|Type|Options|
|------|----|-------|
|note_id|string|null: false, foreign_key: true|
|image_url|string||

### Association
- belongs_to note
