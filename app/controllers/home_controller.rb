class HomeController < ApplicationController
  def index
    @all_items = Item.all
    offset = rand(Item.count)
    @random_header = Item.offset(offset).first
    @popular_items = Item.order(:popularity)
    @saved_list_cookies = cookies[:saved_list]
    @saved_list_cookies_array = JSON.parse(@saved_list_cookies)

  end
end
