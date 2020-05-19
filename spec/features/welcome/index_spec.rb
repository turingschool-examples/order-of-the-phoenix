require 'rails_helper'

describe 'Welcome index page' do
  it 'has a drop down menu to select the house' do
    visit '/'
    click on 'Slytherin', from: 'hogwarts_house'
  end
end