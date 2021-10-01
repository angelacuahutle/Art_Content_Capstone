module ArticlesHelper
  def top_title(article)
    article.try(:title)
  end

  def top_image(article)
    url_for(article.try(:image).blob)
  end

  def top_content(article)
    article.try { |a| a.text.truncate(100, separator: ' ', omission: '... Read more') }
  end

  def number_of_votes(article)
    pluralize(article.votes.size, 'vote')
  end

  def author_name(article)
    article.user.name
  end
end
