require "httparty"
require "pp"

class Country
  include HTTParty

  base_uri "https://restcountries.com/v3.1"
  default_params fields: "name,flags,region,capital"

  def self.all
    # get("/all?fields=name,flag,region,capital")
    get("/all")
  end

  def self.search(name)
    get ("/name/#{name}")
  end
end

# pp Country.all
