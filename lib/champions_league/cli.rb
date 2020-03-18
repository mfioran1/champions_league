class ChampionsLeague::CLI 
  
  def call 
    list_teams
    teams
    goodbye
  end
  
  def list_teams
    puts "Which 4 english premier teams will currently qualify for Champions League?"
    #puts " 
    #1. Liverpool
    #2. Manchester City
    #3. Leicester City
    #4. Chelsea"
    @teams = ChampionsLeague::Teams.all
    @teams.each.with_index(1) do |team, i|
      puts "#{i}. #{team.name}"
    end
  end
  
  def teams
    input = nil 
    while input != "goodbye"
    puts "Enter the number of the team to see their stats, or type goodbye to leave."
      input = gets.strip
      if input.to_i > 0 
        each_team = @teams[input.to_i-1]
        puts "#{each_team.name} - Wins: #{each_team.wins} - Losses: #{each_team.losses} - Draws: #{each_team.draws} - Total Points: #{each_team.total_points}"
      elsif input == "begin" 
        list_teams
      else
        puts "That didn't work, if you want to start over type begin."
      end
    end
  end
  
  def goodbye
    puts "Stay tuned for more Champions League information!"
  end
  
end  