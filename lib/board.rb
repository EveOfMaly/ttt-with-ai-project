class Board 
    attr_accessor :cells

    def initialize
        @cells = Array.new(9, " ")
    end

    def reset!
        self.cells.clear
        self.cells = Array.new(9, " ")
    end


    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end


    def input_to_index(input)
        index = input.to_i - 1 
      end

    def position(input)
        index = input_to_index(input)
        @cells[index]
    end  

    def full? 
        @cells.all? {|token| token != " "}
    end 

    def turn_count
        @cells.count {|token| token == "X" || token == "O"}
    end 

    def taken?(input)
        index = input_to_index(input)
        @cells[index] == "X" || @cells[index] == "O"
    end 

    def valid_move?(input)
      input.to_i.between?(1,9) && !taken?(input)
    end

    def update(input, player)
        index = input_to_index(input)
        @cells[index] = player.token
    end 


end 