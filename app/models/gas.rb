require 'hpricot'
require 'open-uri'

class Gas


  def self.get_klo_prices
    @url = "http://klo.ua/"
    @hp = Hpricot(open(@url))


    gasType= []
    gasPrice = []

    (@hp/"div.klo-prices-for-gas-container/div").each { |div|
      gasType << div.attributes['class']

    }

    gasType.delete_at(0)

    (@hp/"div.klo-prices-for-gas-container/div/span/").each { |span|
      gasPrice << span

    }

    return gasType, gasPrice
  end


  def self.get_klo

    @url = "http://klo.ua/"
    @hp = Hpricot(open(@url))

    prices = {}

    (@hp/"div.klo-prices-for-gas-container/div").each { |div|
      prices[div.attributes['class']]=''
    }


    prices.each_key { |key|
      (@hp/"div.klo-prices-for-gas-container/div.#{key}/span/").each { |span|
        prices[key]+=span.to_s }
    }

    return prices

  end


  def self.get_okko


    @url = "http://okko.ua/uk/network-of-filling-stations"
    @hp = Hpricot(open(@url))

    prices = {}

    (@hp/"#fuelPrice/ul/li/div").each { |div|
      prices[div.attributes['id']]=div.at("span/")

    }

    return prices
  end


end

Gas.get_okko

