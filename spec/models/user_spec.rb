require 'rails_helper'

describe User do

  it 'should have a valid factory' do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it 'should only be able to save a maximum of one record' do
    user = FactoryGirl.build(:user)
    expect(FactoryGirl.build(:user, email:'hello')).to_not be_valid
  end

end
