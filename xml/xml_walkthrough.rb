require 'nokogiri'

xml = Nokogiri::XML(open('xml_menu.xml'))

# xml.search('price').each do |i|
#   puts i.text
# end

# xml.xpath('//price').each do |i|
# puts i.text.gsub('£', '').to_f
# end

xml.xpath('//breakfast_menu/food').each do |i|
  puts i.text
end
