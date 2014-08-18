require 'rails_helper'

describe User do

  it 'should have a valid factory' do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it 'should only accept one email' do
    expect(FactoryGirl.build(:user, email:'hello')).to_not be_valid
  end

  it 'should only accept one password' do
    expect(FactoryGirl.build(:user, password:'something')).to_not be_valid
  end

end
