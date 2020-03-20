class ChampionsLeague::Teams
  attr_accessor :name, :wins, :losses, :draws, :total_points
  
  def self.all 
    self.scrape_teams
  end
  
  def self.scrape_teams 
    teams = []
    
    teams << self.scrape_first 
    teams << self.scrape_second
    teams << self.scrape_third
    teams << self.scrape_fourth
    
    teams
  end
  
  def self.scrape_first
   doc = Nokogiri::HTML(open("https://www.espn.com/soccer/standings/_/league/eng.1"))
   
   team = self.new
   team.name = doc.css("span.hide-mobile").first.text
   team.wins = doc.css("span.stat-cell")[1].text
   team.losses = doc.css("span.stat-cell")[2].text
   team.draws = doc.css("span.stat-cell")[3].text
   team.total_points = doc.css("span.stat-cell")[7].text
   
   team
  
  end
  
  def self.scrape_second
    doc = Nokogiri::HTML(open("https://www.espn.com/soccer/standings/_/league/eng.1"))
    
    team = self.new
    team.name = doc.css("span.hide-mobile")[1].text
    team.wins = doc.css("span.stat-cell")[9].text
    team.losses = doc.css("span.stat-cell")[10].text
    team.draws = doc.css("span.stat-cell")[11].text
    team.total_points = doc.css("span.stat-cell")[15].text
    
    team
  end
  
  def self.scrape_third
    doc = Nokogiri::HTML(open("https://www.espn.com/soccer/standings/_/league/eng.1"))
    
    team = self.new
    team.name = doc.css("span.hide-mobile")[2].text
    team.wins = doc.css("span.stat-cell")[17].text
    team.losses = doc.css("span.stat-cell")[18].text
    team.draws = doc.css("span.stat-cell")[19].text
    team.total_points = doc.css("span.stat-cell")[23].text
    
    team
  end
  
  def self.scrape_fourth
    doc = Nokogiri::HTML(open("https://www.espn.com/soccer/standings/_/league/eng.1"))
    
    team = self.new 
    team.name = doc.css("span.hide-mobile")[3].text
    team.wins = doc.css("span.stat-cell")[25].text
    team.losses = doc.css("span.stat-cell")[26].text
    team.draws = doc.css("span.stat-cell")[27].text
    team.total_points = doc.css("span.stat-cell")[31].text
    
    team
  end
    
      
    
  
end  
#name = doc.search("span.long").first.text
#table.search("td.points").first.text
#Liverpool
 #doc.css("span.hide-mobile").first.text
 #doc.css("span.stat-cell")[1].text
 #doc.css("span.stat-cell")[2].text
 #doc.css("span.stat-cell")[3].text
 #doc.css("span.stat-cell")[7].text
 
 #Manchester City 
 #doc.css("span.hide-mobile")[1].text
 #doc.css("span.stat-cell")[9].text
 #doc.css("span.stat-cell")[10].text
 #doc.css("span.stat-cell")[11].text
 #doc.css("span.stat-cell")[15].text
 
 #Leicester City 
 #doc.css("span.hide-mobile")[2].text
 #doc.css("span.stat-cell")[17].text
 #doc.css("span.stat-cell")[18].text
 #doc.css("span.stat-cell")[19].text
 #doc.css("span.stat-cell")[23].text
 
 #Chelsea
 #doc.css("span.hide-mobile")[3].text
 #doc.css("span.stat-cell")[25].text
 #doc.css("span.stat-cell")[26].text
 #doc.css("span.stat-cell")[27].text
 #doc.css("span.stat-cell")[31].text
 
 