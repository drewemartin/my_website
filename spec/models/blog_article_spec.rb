require 'rails_helper'

describe BlogArticle do

  context 'before creations' do

    it 'should have a valid factory' do
      blog = FactoryGirl.build(:blog_article)
      expect(blog).to be_valid
    end

    it 'should not accept an empty title' do
      expect(FactoryGirl.build(:blog_article, title:nil)).to_not be_valid
    end

    it 'should not have an empty body' do
      expect(FactoryGirl.build(:blog_article, body:nil)).to_not be_valid
    end

  end

  context 'as for association' do

    it 'should belong to a user' do
      expect(FactoryGirl.create(:blog_article)).to respond_to(:user)
    end

  end
end
