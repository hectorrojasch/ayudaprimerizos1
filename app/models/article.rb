class Article < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  has_one_attached :foto
end
