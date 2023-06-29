require 'httparty'

class ApiTopHeadlines
  def self.get_news
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV['NEWS_API_KEY']}")
    if response.code == 200
      data = JSON.parse(response.body)
      @articles = data['articles']
    else
      @articles = []
    end
  end
end
