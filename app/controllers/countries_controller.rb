class CountriesController < ApplicationController
  def index
    # Get user's search terms,
    # if no search then default results will be shown for “ca”.
    @search_term = params[:looking_for] || "ca"
    @countries = Country.search(@search_term)
  end

  def details
    @country_name = params[:name]
    @country = Country.search_first_one(@country_name)
  end
end
