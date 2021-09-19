require 'open-uri'
require 'nokogiri'

url = "https://ria.ru/"
html = URI.open(url)
doc = Nokogiri::HTML(html)
for i in (0..10)
	puts doc.css('.cell-list__item-title')[i].text
end