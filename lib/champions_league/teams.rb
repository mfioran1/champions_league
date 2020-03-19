class ChampionsLeague::Teams
  attr_accessor :name, :wins, :losses, :draws, :total_points
  
  def self.all 
    self.scrape_teams
  end
  
  def self.scrape_teams 
    teams = []
    
    teams << self.scrape_premier
    
    teams
  end
  
  def self.scrape_premier
    doc = Nokogiri::HTML(open("https://premierleague.com/tables"))
    table = doc.search("tbody")
    table.search("tr")[1]
    table.search("tr").each do |name| 
      name.search("span.long").text 
      
    binding.pry 
    end
  end
  
end  
#name = doc.search("span.long").first.text
#table.search("td.points").first.text
