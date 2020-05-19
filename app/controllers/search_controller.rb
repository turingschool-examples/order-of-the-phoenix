class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://www.potterapi.com/v1/characters?') do |faraday|
      faraday.params['key'] = ENV['HARRY_POTTER_API']
      faraday.params['house'] = params['house']
      faraday.params['orderOfThePhoenix'] = true
    end

    response = conn.get
    json = JSON.parse(response.body, symbolize_names: true)
    @members =  json.map do |member_params|
      Member.new(member_params)
    end
  end
end