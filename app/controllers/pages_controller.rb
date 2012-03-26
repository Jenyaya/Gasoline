class PagesController < ApplicationController


  def getprices
    @title = 'Gasoline Prices'
    @klo_prices = Prices.get_klo
    @okko_prices = Prices.get_okko
  end


end
