require 'rails_helper'

RSpec.describe 'PotterService' do
  it 'exists' do
    service = PotterService.new

    expect(service).to be_an_instance_of(PotterService)
  end

  it 'can import data' do

    service = PotterService.new

    member = service.members(ENV['POTTER_API_KEY'])
    
    expect(member.sample).to have_key(:name)
    expect(member.sample).to have_key(:house)
  end
end
