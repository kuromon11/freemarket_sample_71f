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

# freemarket_sample DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|
|password|string|null: false|
|email|string|null: false|
|status|string|null: false|
|delected_at|string|null: false|
### Association
- has_many :items, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :points, dependent: :destroy
- has_many :social_providers, dependent: :destroy
- has_one :deliver_adresses, dependent: :destroy
- has_many :wallets, dependent: :destroy
- has_many :reviews, dependent: :destroy
- has_many :orders, dependent: :destroy

## deliver_adressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|zip_code|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|telephone|string|null: false|
### Association
- belongs_to :user

## social_providersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|provider|string|null: false|
### Association
- belongs_to :user

## walletsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,FK: true|
|money|integer|null: false|
### Association
- belongs_to : user

## pointsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,FK: true|
|score|integer|null: false|
### Association
- belongs_to : user

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|rate|integer|null: false|
|text|text||
### Association
- belongs_to :item
- belongs_to :user

## orderテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## shippingテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|fee_burgen|boolean|null: false, foreign_key: true|
|service|integer|null: false|
|area|string|null: false|
|handling_time|integer|null: false|
### Association
- belongs_to :item

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
|i_text|text|null: false|
|size|text|null: false|
|condition|integer|null: false|
|price|integer|null: false|
|trading_status|integer|null: false|
|completed_at|datetime|
### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :likes dependent: :destroy
- has_many :comments dependent: :destroy
- has_many :messages dependent: :destroy
- has_one :shipping
- has_many :reviews
- has_many :item_images dependent: :destroy
- has_one :order

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :item

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :item

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|image_url|string|null: false|
### Association
- belongs_to :item

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false,FK: true|
|brand_groups_id|references|null: false,FK: true|
|name|string|null: false|
### Asssociation
- has_many :items
- belongs_to :brand_group
- belongs_to :category

## brand_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :brands


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|path|references|null: false,FK: true|
|name|references|null: false,FK: true|
|ancestry|string| |
### Association
- has_many :brands
- has_many :items

