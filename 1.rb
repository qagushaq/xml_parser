require 'nokogiri'
#encoding: UTF-8
xml_file = "full.xml"
@xml = Nokogiri::XML(File.open xml_file)
@xml.encoding = 'UTF-8'
@xml.xpath('//ZemlyaUrLiz_v5_l4i/ZemlyaUrLiz_v5_l4i_t003/ZemlyaUrLiz_v5_l4i_t003_ri/ZemlyaUrLiz_v5_l4i_t003_ric8a').each do |node|
  node.content = sprintf("%.5f",node.content)
end

puts @xml.to_xml

#ruby 1.rb > done.xml
