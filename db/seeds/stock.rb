stocks = [
  { "category": 0, "code": '9999', "name": 'テスト株式会社', "url": 'https://example.com/', "description": 'テスト株式会社は、テストを行うための会社である', "sector": '情報' },
  { "category": 1, "code": 'TEST', "name": 'Test Inc', "url": 'https://example.com/', "description": 'Tesc Ins is test', "sector": 'TECHNOLOGY' },
  { "category": 1, "code": 'LU', "name": 'Lufax Holding Ltd', "url": 'https://example.com', "description": 'Lufax Holding Ltd operates a technology-based personal financial services platform in China. The company is headquartered in Shanghai, China.', "sector": 'FINANCE' },
  { "category": 1, "code": 'ENIA', "name": 'Enel Americas SA ADR', "url": 'https://example.com', "description": 'Enel Amricas SA generates, transmits and distributes electricity using hydroelectric and thermal energy sources in Argentina, Brazil, Colombia and Peru. The company is headquartered in Santiago, Chile.', "sector": 'ENERGY & TRANSPORTATION' },
  { "category": 1, "code": 'NIO', "name": 'Nio Inc Class A ADR', "url": 'https://example.com', "description": 'NIO Inc. designs, develops, manufactures, and sells smart electric vehicles in mainland China, Hong Kong, the United States, the United Kingdom, and Germany. The company is headquartered in Shanghai, China.', "sector": 'MANUFACTURING' },
  { "category": 1, "code": 'AMD', "name": 'Advanced Micro Devices Inc', "url": 'https://example.com', "description": "Advanced Micro Devices, Inc. (AMD) is an American multinational semiconductor company based in Santa Clara, California, that develops computer processors and related technologies for business and consumer markets. AMD's main products include microprocessors, motherboard chipsets, embedded processors and graphics processors for servers, workstations, personal computers and embedded system applications.", "sector": 'MANUFACTURING' },
  { "category": 1, "code": 'AAPL', "name": 'Apple Inc', "url": 'https://example.com', "description": "Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services. Apple is the world's largest technology company by revenue (totalling $274.5 billion in 2020) and, since January 2021, the world's most valuable company. As of 2021, Apple is the world's fourth-largest PC vendor by unit sales, and fourth-largest smartphone manufacturer. It is one of the Big Five American information technology companies, along with Amazon, Google, Microsoft, and Facebook.", "sector": 'TECHNOLOGY' },
  { "category": 1, "code": 'AMZN', "name": 'Amazon.com Inc', "url": 'https://example.com', "description": "Amazon.com, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence. It is one of the Big Five companies in the U.S. information technology industry, along with Google, Apple, Microsoft, and Facebook. The company has been referred to as one of the most influential economic and cultural forces in the world, as well as the world's most valuable brand.", "sector": 'TRADE & SERVICES' },
  { "category": 1, "code": 'MO', "name": 'Altria Group', "url": 'https://example.com', "description": "Altria Group, Inc. (previously known as Philip Morris Companies, Inc.) is an American corporation and one of the world's largest producers and marketers of tobacco, cigarettes and related products. It operates worldwide and is headquartered in unincorporated Henrico County, Virginia, just outside the city of Richmond.", "sector": 'MANUFACTURING' },
  { "category": 1, "code": 'META', "name": 'Meta Platforms, Inc.', "url": 'https://example.com', "description": 'Meta Platforms, Inc. develops products that enable people to connect and share with friends and family through mobile devices, PCs, virtual reality headsets, wearables and home devices around the world. The company is headquartered in Menlo Park, California.', "sector": 'TECHNOLOGY' },
  { "category": 1, "code": 'VALE', "name": 'Vale SA ADR', "url": 'https://example.com', "description": 'Vale SA produces and sells iron ore and iron ore pellets for use as raw material in steelmaking in Brazil and internationally. The company is headquartered in Rio de Janeiro, Brazil.', "sector": 'ENERGY & TRANSPORTATION' },
  { "category": 1, "code": 'PLTR', "name": 'Palantir Technologies Inc - Class A', "url": 'https://example.com', "description": 'Palantir Technologies Inc. creates and implements software platforms for the intelligence community in the United States to assist in counterterrorism investigations and operations. The company is headquartered in Denver, Colorado.', "sector": 'TECHNOLOGY' }
]

stocks.each do |stock|
  s = Stock.create(
    category: stock['category'],
    code: stock['code'],
    name: stock['name'],
    url: stock['url'],
    description: stock['description'],
    sector: stock['sector']
  )

  if s.errors.any?
    puts "Stock[#{stock['name']}]は登録できませんでした"
  else
    puts "Stock[#{stock['name']}]を登録しました"
  end
end
