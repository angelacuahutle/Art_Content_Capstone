class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    flash[:notice] = 'You voted for an article' if @vote.save
  end

  def destroy
    @vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    flash[:notice] = 'You unvoted an article' unless @vote
  end
end
