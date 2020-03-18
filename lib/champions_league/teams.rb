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
    name = doc.search("span.long").first.text
    binding.pry 
  end
  
end  
name = doc.search("span.long").first.text
