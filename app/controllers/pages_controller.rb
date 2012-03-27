 # encoding: utf-8
 class PagesController < ApplicationController


  def getprices
    @title = "Цены на бензин"
    @klo_prices = Prices.get_klo
    @okko_prices = Prices.get_okko
  end


  def getklo
     @klo_prices = Prices.get_info_klo
  end

end
