class StocksController < ApplicationController
	def search
		@stock = Stock.find_stock(params[:search])
		@stock = Stock.lookup_stock(params[:search])	
		
		if @stock
			render partial: 'search'
		else
			render status: :not_found,nothing: true
		end
	end
end