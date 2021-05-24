class CollectionsController < ApplicationController

  # GET /collections or /collections.json
  def index
    @collections = Collection.all
    @collection_value = params[:collection].to_i

    if (@collection_value == nil)
      @collection_value = 0
    end

    case @collection_value
    when -1
      @collections = Collection.all
    # All
    when 0
      @collections = Collection.all
    # Men
    when 1
      @collections = Collection.where(name: "Men")
    # Women
    when 2
      @collections = Collection.where(name: "Women")
    # Children
    when 3
      @collections = Collection.where(name: "Children")
    # new
    when 4
      @collections = Collection.where(name: "New")
    end

  end

  def popular
    @collections = Collection.all
    render 'index'
  end

end
