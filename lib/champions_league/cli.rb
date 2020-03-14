class ChampionsLeague::CLI 
  
  def call 
    list_teams
    teams
    goodbye
  end
  
  def list_teams
    puts "Which 4 english premier teams will currently qualify for Champions League?"
    puts " 
    1. Liverpool
    2. Manchester City
    3. Leicester City
    4. Chelsea"
  end
  
  def teams
    input = nil 
    while input != "goodbye"
    puts "Enter the number of the team to see their stats, or type goodbye to leave."
      input = gets.strip
      case input
      when "1"
        puts "Liverpool W- L- D- total points: "
      when "2"
        puts "Manchester City W- L- D- total points: "
      when "3"
        puts "Leicester City W- L- D- total points: "
      when "4"
        puts "Chelsea W- L- D- total points: "
      end
    end
  end
  
  def goodbye
    puts "Stay tuned for more Champions League information!"
  end
  
end  