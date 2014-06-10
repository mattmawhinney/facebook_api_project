class FacebookController < ApplicationController
  def index
  	response = HTTParty.get('http://graph.facebook.com/pkbanks12')
  	@profile = JSON::parse(response.body)
  end
end
