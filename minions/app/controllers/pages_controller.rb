class PagesController < ApplicationController
  def home
  end
  def about
  end
	
	def search
		require 'ruby-web-search'
		@term = params[:term]
		
		response = RubyWebSearch::Google.search(:query => "Natalie Portman")
		
		thing = response.results
		@another = thing.content
	end
end
