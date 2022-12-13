require 'nokogiri'
require 'httparty'
require 'byebug'
require 'open-uri'

def scraper
    doc = Nokogiri::HTML("L8213consol.html")
    doc2 = File.open("L8213consol.html") { |f| Nokogiri::HTML(f) }
    doc2.css('p').each do | paragraph |
        paragraph.add_next_sibling "<spam> TEST </spam>"
    end
    puts doc2
     # seleciona os paragrafos
    # pars = doc2.css('p')
    # pars = doc2.css('a')
    # pars = doc2.css('p, a')
    # pars.each do |art|
    #     #artigo_organizado = {
    #      #   art: art.text
    #         #price: product_listing.css('span').text
    #     #}
    #     print art.children.text
    #     print "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
    #     #byebug
    #  end
 
 end 

scraper

