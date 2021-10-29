class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    return unless @vote.save

    redirect_to request.referrer, notice: 'You voted for an article' if request.referrer
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to request.referrer, notice: 'You unvoted an article' unless request.referrer.nil?
  end
end
