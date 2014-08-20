require 'rails_helper'

describe Comment do

  context "before creation" do

    it 'should have a valid factory' do
      comment = FactoryGirl.build(:comment)
      expect(comment).to be_valid
    end

    it 'should not have an empty body' do
      expect(FactoryGirl.build(:comment, body:nil)).to_not be_valid
    end

    xit 'should not have a body w/ more than 300 chars' do
      expect(FactoryGirl.build(:comment)).to_not be_valid
    end

    it 'should not have an empty email' do
      expect(FactoryGirl.build(:comment, email:nil)).to_not be_valid
    end

    it 'should have an email w/ an @ symbol' do
      expect(FactoryGirl.build(:comment, email:'email.email.com')).to_not be_valid
    end

    it 'should have an email w/ a period symbol' do
      expect(FactoryGirl.build(:comment, email:'email@emailcom')).to_not be_valid
    end

    it 'should not have an empty name' do
      expect(FactoryGirl.build(:comment, name:nil)).to_not be_valid
    end

    it 'should have a name that is greater than 3 chars' do
      expect(FactoryGirl.build(:comment, name:'sy')).to_not be_valid
    end

  end

  context "as for association" do

    it 'should have belong to a blog article' do
      expect(FactoryGirl.build(:comment)).to respond_to(:blog_article)
    end

  end

end
