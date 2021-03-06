require 'rails_helper'

RSpec.describe Article, type: :model do

  describe '#validations' do
    it "should test that the factory is valid" do
      expect(build :article).to be_valid
    end
  
    it "should vaildate the prescence of a title" do
      article = build :article, title: ''
      expect(article).not_to_be_valid
      expect(article.errors.messages[:title]).to include("can't be blank")
    end
  
    it "should vaildate the prescence of content" do
      article = build :article, content: ''
      expect(article).not_to_be_valid
      expect(article.errors.messages[:content]).to include("can't be blank")
    end
  
    it "should vaildate the prescence of slug" do
      article = build :article, slug: ''
      expect(article).not_to_be_valid
      expect(article.errors.messages[:slug]).to include("can't be blank")
    end
  
    it "should vaildate the uniqueness of slug" do
      article = create :article
      invalid_article = build :article, slug: article.slug
      expect(invalid_article).not_to_be_valid
    end
  end
  
  describe '.recent' do
    it 'should list recent article first' do
      older_article = create.article
      newer_article = create.article
      expect(described_class.recent).to eq(
        [newer_article, older_article]
      )
      older_article.update_column :created_at, Time.now
      expect(described_class).to eql(
        [older_article, newer_article]
      )
    end
  end
end


