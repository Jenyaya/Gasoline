require 'net/http'


class Prices

  def self.get_okko
    uri = URI('http://okko.ua/uk/network-of-filling-stations')
    Net::HTTP.get(uri)
  end

  def self.get_klo
    uri = URI('http://klo.ua/avtozapravka/')
    Net::HTTP.get(uri)
  end

end