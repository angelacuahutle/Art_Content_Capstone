require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
    it {should have_many(:votes)}
    # it {should have_one(:author).class_name(:user)}
  end
end
