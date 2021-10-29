require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'redirects to login' do
      get :index, params: {}, session: valid_session
      expect(response).to redirect_to new_user_session_path
    end
  end
end
