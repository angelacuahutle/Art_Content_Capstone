require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  let(:user) { create :user }
  let(:category) { create :category }
  let(:article) { create :article, author_id: user.id, category_id: category.id }
  let!(:vote) { create :vote, article_id: article.id, user_id: user.id }

  login_user

  describe 'GET votes#create' do
    it 'creates vote for article' do
      post :create, params: { article_id: article.id, user_id: user.id }
      expect(response).to be_successful

    end
  end

  describe 'DELETE votes#destroy' do
    it 'should unvote an article' do
      vote
      expect do
        delete :destroy, params: { id: vote.id, article_id: article.id }
      end.to change(Vote, :count).by(-1)
    end
  end
end
