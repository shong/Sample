class PagesController < ApplicationController
  def index
    @critterposts = Critterpost.order("created_at desc")
  end

end
