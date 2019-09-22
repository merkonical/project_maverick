class ProjectMaverick::Scraper
  
  html = open("https://www.noxxic.com/wow/dps-rankings/")
  
  doc = Nokogiri::HTML(html)

  position = doc.css('span.pos')[0..4].text.split('')
  
  druid = doc.css('span.ranking-item')[0].text[1..13]
  
  warlock_aff = doc.css('span.ranking-item')[1].text[1..18]
  
  dem_warlock = doc.css('span.ranking-item')[2].text[1..18]
  
  mage = doc.css('span.ranking-item')[3].text[1..10]
  
  hunter = doc.css('span.ranking-item')[4].text[1..19]
  
  binding.pry
  
  doc.css('span.val')[0..4].text.gsub("DPS","").split
end 