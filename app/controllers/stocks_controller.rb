class StocksController < ApplicationController
	def search
		@stock = Stock.find_stock(params[:search])
	end
end