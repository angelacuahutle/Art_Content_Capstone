require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:priority)}
    it {should have_many(:articles)}
  end
end