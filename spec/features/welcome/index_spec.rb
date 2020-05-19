require 'rails_helper'

describe 'Welcome index page' do
  it 'has a drop down menu to select the house' do
    visit '/'
    select 'Slytherin', from: 'house'
  end

  it 'sends me to a new page when I click submit on drop down box' do
    visit '/'
 
    select 'Slytherin', from: 'house'
    click_on 'Search For Members'

    expect(page).to have_current_path('/search?utf8=%E2%9C%93&house=Slytherin&commit=Search+For+Members')
  end
end