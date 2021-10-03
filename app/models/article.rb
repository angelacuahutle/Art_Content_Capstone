class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :categories
  validates :title, presence: true
  validates :body, presence: true
  has_one_attached :image

  def self.top_article
    return unless Vote.any?

    article_id = Vote.group(:article_id).count.max_by { |_, v| v }.first
    Article.find(article_id)
  end
end
