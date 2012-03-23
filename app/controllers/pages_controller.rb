class PagesController < ApplicationController


  def getprices
    @title = 'Gasoline Prices'
    @okko = Prices.get_okko
  end


end
