class Question 

    attr_accessor(:answer, :name)
    def initialize
        @num1 = rand(1...20)
        @num2 = rand(1...20)
        @answer = @num1 + @num2
    end

    def ask_question 
         "What does #{@num1} + #{@num2} equals to?"
    end

    def check_answer(input)
        input == @answer
    end


end
