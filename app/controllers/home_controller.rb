class HomeController < ApplicationController
  def index
    @all_items = Item.all
    offset = rand(Item.count)
    @random_header = Item.offset(offset).first
    @popular_items = Item.order(:popularity)
    @saved_list_cookies = cookies[:saved_list]

    if (@saved_list_cookies == nil)
      saved_list_cookies_array = []
    else
      @saved_list_cookies_array = JSON.parse(@saved_list_cookies)
    end

  end

  def email
    @email = params[:email]
    NewsletterMailer.with(email: @email).newsletter_email.deliver_later
    request.referrer
  end
end
