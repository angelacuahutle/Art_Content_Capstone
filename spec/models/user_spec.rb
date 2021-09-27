require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(20) }
  end

  describe 'associations' do
    it {should have_many(:articles)}
    it {should have_many(:votes)}
  end
end
