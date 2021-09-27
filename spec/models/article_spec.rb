require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:text)}
    it should have_many(:votes)
    it should have_one(:image)
  end
end
