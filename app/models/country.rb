require "httparty"
require "pp"

class Country
  include HTTParty

  base_uri "https://restcountries.com/v3.1"
  # default_params fields: "name,flags,region"

  def self.all
    get("/all?fields=name,flags,region")
  end

  def self.search(name)
    encoded_name = CGI.escape(name)
    get ("/name/#{encoded_name}?fields=name,flags,region")
  end

  def self.search_first_one(name)
    encoded_name = CGI.escape(name)
    response = get ("/name/#{encoded_name}?fullText=true")
    if response.success?
      response.parsed_response.first
    else
      nil
    end
  end
end

# pp Country.all
