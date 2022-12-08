class Order < ApplicationRecord
  belongs_to :user

  has_many :order_articles, dependent: :destroy
  has_many :articles, through: :order_articles
end
