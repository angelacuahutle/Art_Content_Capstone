module VotesHelper
  def vote_button(article)
    vote = Vote.find_by(user: current_user, article: article)
    if vote
      link_to('Unvote', article_vote_path(id: vote.id, article_id: article.id),
              method: :delete)
    else
      link_to('Vote', article_vote_path(article), method: :post)
    end
  end

  def info_of(_article)
    content_tag :h3, @article.author.name.html_safe
    "Total votes: #{@article.votes.all.count}".html_safe
  end
end
