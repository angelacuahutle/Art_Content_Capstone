require 'rails_helper'

RSpec.describe Article, type: :controller do
  describe '#index' do
    it "it handles the interaction http response" do
      profile = create_profile
      login_as profile.user
  
      expect do
        bypass_rescue
        get :show, :id => profile.id + 1
      end.to raise_error(/403 Forbidden/)
    end
  end
end
