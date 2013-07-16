require 'instagram'

Instagram.configure do |config|
	config.client_id = 'c51582f141c24974bc8234db150e1624'
	config.client_secret = 'ccf1ec63f6584f53b9652f7a0f662550'
end

class HomeController < ApplicationController
  	def index
  	end

  	def feed
	end

	def adios
	end
end
