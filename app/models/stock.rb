class Stock < ApplicationRecord

	def self.find_stock(symbol)
		where(ticker: symbol)
	end

	def self.lookup_stock(symbol)			
		stock = StockQuote::Stock.quote(symbol)			
		return nil unless stock

		new_stock = Stock.new(ticker: stock.symbol, name: stock.name)
		new_stock.last_price = (stock.open || stock.close || 'Unavailable')
		new_stock 		
	end	
end
