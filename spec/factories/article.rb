FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence(word_count: 3) }
    body { Faker::Lorem.paragraph(sentence_count: 40) }
  end
end
