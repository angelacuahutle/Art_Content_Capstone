require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it do
      get :index
      is_expected.to redirect_to new_user_session_path
    end
  end
end
