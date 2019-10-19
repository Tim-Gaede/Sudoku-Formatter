function text(puzzle)
    result = "\n\n"

    # Top edge
    result *= "╔═══╤═══╤═══╦═══╤═══╤═══╦═══╤═══╤═══╗\n"


    for row = 1 : 9
        for col = 1 : 9

            char = string(puzzle.grid[row, col])
            if (char == "0")   char = " "  end

            if (col-1) % 3 == 0
                result *= "║ " * char * " "
            else
                result *= "│ " * char * " "
            end

        end
        result *= "║\n"

        if row == 9
            result *= "╚═══╧═══╧═══╩═══╧═══╧═══╩═══╧═══╧═══╝\n\n"
        elseif (row-1) % 3 == 2
            result *= "╠═══╪═══╪═══╬═══╪═══╪═══╬═══╪═══╪═══╣\n"
        else
            result *= "╟───┼───┼───╫───┼───┼───╫───┼───┼───╢\n"
        end

    end


    result
end
