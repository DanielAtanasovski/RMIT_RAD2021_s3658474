class HomeController < ApplicationController
  def index
    @all_items = Item.all
    offset = rand(Item.count)
    @random_header = Item.offset(offset).first
    @popular_items = Item.order(:popularity)
  end
end
