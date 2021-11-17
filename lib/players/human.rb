module Players 
    class Human < Player

        def move(board = nil)
            puts "Please enter a number between 1 - 9"
            input = gets.chomp
        end

    end 

end