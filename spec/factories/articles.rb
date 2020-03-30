FactoryBot.define do
  factory :article do
    sequence(:title) {|n| "This is article #{n}" }
    sequence(:content) {|n| "This is the content #{n}" }
    sequence(:slug) {|n| "article-#{n}" }
  end
end
