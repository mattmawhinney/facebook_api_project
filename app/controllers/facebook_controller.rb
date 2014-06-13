class FacebookController < ApplicationController

	#dynamic constant assignment problem 
  url_first = "http://graph.facebook.com/"

	def index
		url_first = "http://graph.facebook.com/"

	
		if params[:name]
			@search_for = params[:name].gsub(/\s+/, "")	# remove all whitespace, because we are searching for fb usernames
			#will variabalize 
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end


		

		urls = %w(4ep facebook shakira rihanna eminem cocacola youtube Cristiano 
							michaeljackson TheSimpsons VinDiesel TexasHoldEm harrypottermovie?ref=br_tf 
							katyperry WillSmith candycrushsaga JustinBieber ladygaga linkinPark 
							fcbarcelona beyonce BobMarley TaylorSwift Selena FamilyGuy)

			

		urls_to_visit = urls.map {|url| url_first + url }

		facebook_profiles = []

		urls_to_visit.each do |url| 
			response = HTTParty.get(url)
			profile = JSON::parse(response.body)

			facebook_profiles << profile


		end 

			facebook_profiles.delete_at(0)

			@facebook_profiles = facebook_profiles





	end

	def test 
		url_first = "http://graph.facebook.com/"

	
		if params[:name]
			@search_for = params[:name].gsub(/\s+/, "")	# remove all whitespace, because we are searching for fb usernames
			#will variabalize 
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end


		

		urls = %w(4ep facebook shakira rihanna eminem cocacola youtube Cristiano 
							michaeljackson TheSimpsons VinDiesel TexasHoldEm harrypottermovie?ref=br_tf 
							katyperry WillSmith candycrushsaga JustinBieber ladygaga linkinPark 
							fcbarcelona beyonce BobMarley TaylorSwift Selena FamilyGuy)

			

		urls_to_visit = urls.map {|url| url_first + url }

		facebook_profiles = []

		urls_to_visit.each do |url| 
			response = HTTParty.get(url)
			profile = JSON::parse(response.body)

			facebook_profiles << profile


		end 

			facebook_profiles.delete_at(0)

			@facebook_profiles = facebook_profiles





	end

  def show

  	url_first = "http://graph.facebook.com/"

	
		if params[:name]
			@search_for = params[:name].gsub(/\s+/, "")	# remove all whitespace, because we are searching for fb usernames
			#will variabalize 
			response = HTTParty.get("http://graph.facebook.com/#{@search_for}")
			@profile = JSON::parse(response.body)
		end


		

		urls = %w(4ep facebook shakira rihanna eminem cocacola youtube Cristiano 
							michaeljackson TheSimpsons VinDiesel TexasHoldEm harrypottermovie?ref=br_tf 
							katyperry WillSmith candycrushsaga JustinBieber ladygaga linkinPark 
							fcbarcelona beyonce BobMarley TaylorSwift Selena FamilyGuy)

			

		urls_to_visit = urls.map {|url| url_first + url }

		facebook_profiles = []

		urls_to_visit.each do |url| 
			response = HTTParty.get(url)
			sleep(0.5)
			profile = JSON::parse(response.body)

			facebook_profiles << profile


		end 

		  facebook_profiles.delete_at(0)
		  @facebook_profiles = facebook_profiles



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