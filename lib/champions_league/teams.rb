class ChampionsLeague::Teams
  attr_accessor :name, :wins, :losses, :draws, :total_points
  
  def self.all 
    # puts "Which 4 english premier teams will currently qualify for Champions League?"
    # puts " 
    # 1. Liverpool
    # 2. Manchester City
    # 3. Leicester City
    # 4. Chelsea"
    
    team_1 = self.new 
    team_1.name = "Liverpool"
    team_1.wins = "234"
    team_1.losses = "123"
    team_1.draws = "214"
    team_1.total_points = "23"
    
    team_2 = self.new 
    team_2.name = "Manchester City"
    team_2.wins = "234"
    team_2.losses = "123"
    team_2.draws = "214"
    team_2.total_points = "23"
    
    team_3 = self.new 
    team_3.name = "Leicester City"
    team_3.wins = "234"
    team_3.losses = "123"
    team_3.draws = "214"
    team_3.total_points = "23"
    
    team_4 = self.new 
    team_4.name = "Chelsea"
    team_4.wins = "234"
    team_4.losses = "123"
    team_4.draws = "214"
    team_4.total_points = "23"
    
    [team_1, team_2, team_3, team_4]
    
  end
  
end  