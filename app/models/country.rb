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
    Rails.logger.debug { "[DEBUG] Original name: #{name}" }
    encoded_name = URI::Parser.new.escape(name)
    Rails.logger.debug { "[DEBUG] Encoded name: #{encoded_name}" }

    get ("/name/#{encoded_name}?fields=name,flags,region")
  end

  def self.search_first_one(name)
    Rails.logger.debug { "[DEBUG] Original name: #{name}" }
    encoded_name = URI::Parser.new.escape(name)
    Rails.logger.debug { "[DEBUG] Encoded name: #{encoded_name}" }

    response = get ("/name/#{encoded_name}?fullText=true")

    response.success? ? response.parsed_response.first : nil
  end
end

# pp Country.all
