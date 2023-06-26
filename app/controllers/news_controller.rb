class NewsController < ApplicationController
  def index
    @no_image = '../assets/images/noimage.png'
    @articles = ApiService.get_news
  end
end
