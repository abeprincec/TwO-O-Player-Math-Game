class Player 

    attr_accessor(:lives, :name)
    def initialize(name ,lives = 3)
        @lives = lives
        @name = name
    end

# def ask_question(other_robot)

     
#     number1 = rand(1...10)
#     number2 = rand(1...10)
#     correct_answer = number1 + number2
#     damage = 1
#     input = gets.chomp.to_i

#     until input == correct_answer
#         if input != correct_answer
#             puts "Incorrect"
#             other_robot.take_dmg(damage)
#         end
#         input = gets.chomp.to_i
#         if input == correct_answer
#         puts "Correct"
#         end
# end


#end


    def take_dmg
        @lives -= 1
    end

    def dead?
        @lives == 0
    end


    def summary 
        "#{@name}: #{@lives}/3" 
    end

end