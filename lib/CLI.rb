class CLI
  def start
    puts "Welsome to Tic-tac-toe!"
    puts " "
    puts "Please select a play style from the Menu"
    menu
  end

  def menu 
    puts "0 - Computer Vs Computer"
    puts "1 - You Vs Computer"
    puts "2 - You Vs A Friend (or Yourself!)"
    puts "exit - leave the Tic-tac-toe game"
    puts " "
    puts "Enter Your Selection Below"
    selection = gets.strip

    case(selection)
    when "0"
      computer_vs_computer_game
    when "1"
      human_vs_computer_game
    when "2"
      human_vs_human_game
    when "exit"
      exit 
    else 
      puts" Please enter a correct option"
      menu 
    end
  end

  def computer_vs_computer_game
    game = Game.new
    puts "This game determines which of our AI Overlords wins Earth "
    Game.new(Players::Computer.new('X'), Players::Computer.new('O')).play
    play_again?
  end
  
end
