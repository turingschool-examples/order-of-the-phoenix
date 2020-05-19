require 'rails_helper'

RSpec.describe "As a user searching by index" do
  describe "can see individual house" do
    it "with each members info" do

    @members = PotterService.new.members

    visit '/'

    page.select 'Gryffindor', from: :house

    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Total Members: 21")
    expect(page).to have_content("House Gryffindor")

    within(first('.member')) do
      expect(page).to have_content('House:')
      expect(page).to have_css('Patronus:')
    end
  end
end
end
