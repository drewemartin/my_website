require 'rails_helper'

describe Letter do
  
  context 'before creation' do

    it 'should have a valid factory' do
      letter = FactoryGirl.build(:letter)
      expect(letter).to be_valid
    end

    it 'should have a name that is not empty' do
      expect(FactoryGirl.build(:letter, name:nil)).to_not be_valid
    end

    it 'should have an email that is not empty' do
      expect(FactoryGirl.build(:letter, email:nil)).to_not be_valid
    end

    it 'should have an email with at least 7 chars' do
      expect(FactoryGirl.build(:letter, email:'1@c.co')).to_not be_valid
    end

    it 'should have an email that includes an @ symbol' do
      expect(FactoryGirl.build(:letter, email:'drewgmail.com')).to_not be_valid
    end

    it 'should have an email that includes a period' do
      expect(FactoryGirl.build(:letter, email:'drew@gmailcom')).to_not be_valid
    end

    it 'should have a subject that is not empty' do
      expect(FactoryGirl.build(:letter, subject:nil)).to_not be_valid
    end

    it 'should have a message that is not empty' do
      expect(FactoryGirl.build(:letter, message:nil)).to_not be_valid
    end
    
  end

end
