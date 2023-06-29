require 'httparty'

class ApiSportsNews
  def self.get_news
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?category=sports&country=us&apiKey=#{ENV['NEWS_API_KEY']}")
    if response.code == 200
      data = JSON.parse(response.body)
      @sports_articles = data['articles']
    else
      @sports_articles = []
    end
  end
end
