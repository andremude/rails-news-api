require 'httparty'

class ApiTechNews
  def self.get_news
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?category=technology&country=us&apiKey=#{ENV['NEWS_API_KEY']}")
    if response.code == 200
      data = JSON.parse(response.body)
      @tech_articles = data['articles']
    else
      @tech_articles = []
    end
  end
end
