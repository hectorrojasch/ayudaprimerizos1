class Article < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags

  has_many :order_articles, dependent: :destroy
  has_many :orders, through: :order_articles
end
