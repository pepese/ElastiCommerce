# ElastiCommerce
Ruby on RailsでECパッケージを作ってみる。

以下の機能を持つ。（作りかけはご愛嬌）

* 商品マスタ管理機能
    * 在庫管理機能も含む
* 会員マスタ管理機能

## 実装環境

* Ruby 2.3.1
* Ruby on Rails 5.0.0.1

## 機能実装メモ

### 最初に

```
rails new ElastiCommerce
```

### 商品マスタ

商品テーブルの作成

* 商品ID / product_id / integer / Not Null
* 名前 / name / string / Not Null
* 商品説明 / description / string
* 削除フラグ / del_flag / integer / Not Null
* 作成日時 / create_date / timestamp / Not Null
* 更新日時 / update_date / timestamp / Not Null

```
rails generate scaffold product product_id:integer name:string description:string del_flag:integer --no-indexes
```