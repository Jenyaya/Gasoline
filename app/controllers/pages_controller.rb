class PagesController < ApplicationController


  def getprices
    @title = 'Gasoline Prices'
    @klo_prices = Prices.get_klo
    @okko_prices = Prices.get_okko
  end


  def getklo
     @klo_prices = Prices.get_klo
  end

end
