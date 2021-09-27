require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(20) }
  end

  describe 'assocations' do
    it do
      should have_many(:articles)
      should have_many(:votes)
    end
  end
end
