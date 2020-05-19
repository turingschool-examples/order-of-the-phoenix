class PotterService

  def members(url)
    get_json(url).map do |info|
      Member.new(info)
    end
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1') do |f|
      f.adapter Faraday.default_adapter
      f.params[:key] = ENV['POTTER_API_KEY']
    end
  end
end
