module ArticlesHelper
  def display_articles_by_category
    @categories.each do |category|
      content_tag(:div,
        class:'category-articles d-flex flex-column',
        style:"
          background-image: linear-gradient(rgba(232, 199, 192,.1), rgba(232, 199, 192,.1)),
          url(<%= latest_article_cover(category) %>);"
                 )
      content_tag(:div, class:"d-flex flex-column mb-4 pb-4 justify-content-between h-100")
      link_to category.name, category_path(category), class:'category-style simple-link text-uppercase text-decoration-underline'
      content_tag(:span, article_by_category(category))
    end
  end

  def top_title(article)
    article.try(:title)
  end

  def top_image(article)
    url_for(article.try(:image).blob)
  end

  def top_content(article)
    article.try { |a| a.body.truncate(100, separator: ' ', omission: '... Read more') }
  end

  def number_of_votes(article)
    pluralize(article.votes.size, 'vote')
  end

  def author_name(article)
    article.user.name
  end

  def latest_article_cover(category)
    return if category.try(:articles).nil?

    img_blob = category.articles.last.image.blob
    url_for(img_blob)
  end

  def top_title_link(article)
    link_to(top_title(article), article_path(article), class: 'simple-link top-title m-2 p-2') if article
  end

  def image_attached?(article)
    image_tag url_for(article.image) if @article.image.attached?
  end
end
