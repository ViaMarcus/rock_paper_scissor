module ComputerHelper
    def generate_throw
        throw = rand(1..3)
        case throw
        when 1
            "rock"
        when 2
            "paper"
        when 3
            "scissor"
        end
    end

    def get_winner(comp,user)
        if ((comp == "rock" && user == "Paper") || (comp == "paper" && user == "Scissor") || (comp == "scissor" && user == "Rock"))
            "You win!"
        else
            "You lose!"
        end
    end
end
