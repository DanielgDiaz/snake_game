module Actions
    def self.move_snake()
        next_direction = state.next_direction
        next_position = calc_next_position(state)

        if next_position_is_valid?(state, next_position)
            move_snake_to(state, next_position)
        else
        end_game(state)
        end
    end

    private

    def calc_next_position(state)    
        current_position = state.snake.positions.first
        case state.next_direction
        when UP
            return Model::Coord.new (new_position.row -1, new_position.col) 
        when RIGHT
            return Model::Coord.new (new_position.row, new_position.col +1) 
        when DOWN
            return Model::Coord.new (new_position.row +1, new_position.col ) 
        when LEFT
            return Model::Coord.new (new_position.row, new_position.col -1) 
        end
    end

    def next_position_is_valid?(state, next_position)
        
    end
end