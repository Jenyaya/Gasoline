require 'net/http'
require 'hpricot'
require 'open-uri'


class Prices

  def self.get_okko

    @url = "http://okko.ua/uk/network-of-filling-stations"
    @hp = Hpricot(open(@url))

    prices = {}

    (@hp/"#fuelPrice/ul/li/div").each { |div|
      prices[div.attributes['id']]=div.at("span/")

    }

    return prices
  end

  def self.get_klo

    @url = "http://klo.ua/avtozapravka/"
    @hp = Hpricot(open(@url))

    prices = {}

    (@hp/"div.klo-prices-for-gas-container/div").each { |div|
      prices[div.attributes['class']]=''
    }


    prices.each_key { |key|

      (@hp/"div.klo-prices-for-gas-container/div.#{key}/span/").each { |span|
        prices[key]+=span.to_s }
    }

   prices.keep_if { |key, value| !value.empty? }

    return prices

  end


  def self.get_info_klo

     @url = "http://klo.ua/avtozapravka/"
    @hp = Hpricot(open(@url))

    prices = {}

    (@hp/"div.klo-prices-for-gas-container/div").each { |div|
      puts div
    }



  end

end