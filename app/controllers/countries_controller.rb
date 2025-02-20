class CountriesController < ApplicationController
  def index
    @search_term = "ca"
    @countries = Country.search(@search_term)
  end
end
