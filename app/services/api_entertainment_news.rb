require 'httparty'

class ApiEntertainmentNews
  def self.get_news
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?category=entertainment&country=us&apiKey=#{ENV['NEWS_API_KEY']}")
    if response.code == 200
      data = JSON.parse(response.body)
      @entertainment_articles = data['articles']
    else
      @entertainment_articles = []
    end
  end
end
