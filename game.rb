require './player.rb'
require './turn_manager.rb'
require './question.rb'

class Game 

    def initialize 
        player1 = Player.new('P1')
        player2 = Player.new('P2')

        @players = [player1, player2]
        @turn_manager = TurnManager.new(@players)
    end

    def print_and_flush(str)
        print str
        $stdout.flush
    end


    # if game_over? == true
    #     puts "WINNER!!"
    # end
    

    def play
        while not game_over?
            current_player = @turn_manager.current_player
            target_player = @turn_manager.target_player
            
            q = Question.new
           
            puts "\n-----NEW TURN------"
            puts "#{current_player.name}: #{q.ask_question}"
            print_and_flush("> ") 
            input = gets.chomp.to_i

            if q.check_answer(input) == true 
            puts "#{current_player.name}:  YES! You are correct."
                swap_players
                print_summary
            end
            if q.check_answer(input) == false
            puts "#{current_player.name}:  Seriously? No!"
            current_player.take_dmg
            swap_players
            print_summary

            end
    end    

          

    end

    def game_over?
        @players.any? { |p| p.dead? }
    end


    def swap_players
        @turn_manager.next
    end

    def print_summary     
        print "#{@players[1].summary} vs  #{@players[0].summary}"  
    end


end
