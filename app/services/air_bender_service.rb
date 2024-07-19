class AirBenderService
  def conn 
    Faraday.new("https://last-airbender-api.fly.dev/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_members_by_nation(nation)
    get_url("api/v1/characters?affiliation=#{nation}&perPage=1000")
  end
end

# def get_members_by_nation_pages(nation)
#   get_url("api/v1/characters?affiliation=#{nation}&perPage=25&page=4")
# end