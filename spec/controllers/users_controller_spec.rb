require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  login_user
  let(:valid_session) { {} }

  describe 'GET devise/sessions#create' do
    it 'redirect to articles path' do
      expect(response).to be_successful
    end
  end
end
