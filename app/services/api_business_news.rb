require 'httparty'

class ApiBusinessNews
  def self.get_news
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?category=business&country=us&apiKey=#{ENV['NEWS_API_KEY']}")
    if response.code == 200
      data = JSON.parse(response.body)
      @business_articles = data['articles']
    else
      @business_articles = []
    end
  end
end
