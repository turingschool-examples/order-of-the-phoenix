require 'rails_helper'

describe 'A search with a specified house' do
  it 'will return a list of the members that are in order of phoenix' do
    visit '/'
 
    select 'Gryffindor', from: 'house'
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
    
  end
end