class FacebookController < ApplicationController

	def index
		if params[:name]
			@search_for = params[:name].gsub(/\s+/, "")	# remove all whitespace, because we are searching for fb usernames
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end
	end

  def show
  end

  def bootstrap
  	if params[:name]
			@search_for = params[:name]
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end
  end

  def get_profile
		if params[:name]
			@search_for = params[:name]
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end
  end	

end