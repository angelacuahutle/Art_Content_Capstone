FactoryBot.define do
  factory :user do
    id {1}
    name { 'Juanito' }
    email {"test@user.com"}
    password {"qwerty"}
    # Add additional fields as required via your User model
  end
end