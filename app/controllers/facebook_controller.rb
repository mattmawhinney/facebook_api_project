class FacebookController < ApplicationController

	def index
		if params[:name]
	  	@search_for = params[:name]
	  	response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
	  	@profile = JSON::parse(response.body)
  	end
  end

  def show
  end
end