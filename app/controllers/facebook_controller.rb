class FacebookController < ApplicationController

	def index
  	# @search_for = "jamiefoxx"

  end

  def show
  	@search_for = params[:name]
  	# @search_for = "jamiefoxx"
  	response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
  	@profile = JSON::parse(response.body)
  end
end