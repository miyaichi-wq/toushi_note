stock = Stock.find(1)
price = stock.prices.create(date: 20220601, price: 100)
stock = Stock.find(2)
price = stock.prices.create(date: 20220601, price: 50.5)
