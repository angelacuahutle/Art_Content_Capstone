class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  validates :title, presence: true
  validates :text, presence: true
  has_one_attached :image
end
