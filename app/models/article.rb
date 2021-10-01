class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :categories
  validates :title, presence: true
  validates :body, presence: true
  has_one_attached :image
end
