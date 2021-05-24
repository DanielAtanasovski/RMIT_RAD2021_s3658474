class BagController < ApplicationController
  def index

    if !user_signed_in?
      redirect_to user_prompt_path
    end


  end
end
