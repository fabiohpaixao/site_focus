class PagesController < ApplicationController
	theme 'focus'
	
	def index
		@page_active = "index"

		# account = Settings['twitter']
 
		# Twitter.configure do |config|
		# 	config.consumer_key = account['consumer_key']
		# 	config.consumer_secret = account['consumer_secret']
		# 	config.oauth_token = account['oauth_token']
		# 	config.oauth_token_secret = account['oauth_token_secret']
		# end

		# @twitter_user = account['name']
		# @tweet_news = Twitter.user_timeline(@twitter_user, {count: 1})
	end

	def about
		@page_active = "about"
	end

	def services
		@page_active = "services"
	end

	def clients
		@page_active = "clients"
	end

	def cases
		@page_active = "cases"
	end

	def contact
		@page_active = "contact"
	end

	def downloads
		@page_active = "downloads"
	end

	def work
		@page_active = "work"
	end
	def voice
		@page_active = "index"
	end
end
