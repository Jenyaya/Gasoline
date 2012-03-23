require 'net/http'


class Prices

  def self.get_okko
    uri = URI('http://okko.ua/uk/network-of-filling-stations')
   Net::HTTP.get(uri)
  end

end

  page = Prices.get_okko

puts page.body