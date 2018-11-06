function text(puzzle)
    result = "\r\n\r\n"

    # Top edge
    result *= "╔═══╤═══╤═══╦═══╤═══╤═══╦═══╤═══╤═══╗\r\n"


    for row = 1 : 9
        for col = 1 :9

            char = string(puzzle.grid[row, col])
            if (char == "0")   char = " "  end

            if (col-1) % 3 == 0
                result *= "║ " * char * " "
            else
                result *= "│ " * char * " "
            end

        end
        result *= "║\r\n"

        if row == 9
            result *= "╚═══╧═══╧═══╩═══╧═══╧═══╩═══╧═══╧═══╝\r\n\r\n"
        elseif (row-1) % 3 == 2
            result *= "╠═══╪═══╪═══╬═══╪═══╪═══╬═══╪═══╪═══╣\r\n"
        else
            result *= "╟───┼───┼───╫───┼───┼───╫───┼───┼───╢\r\n"
        end

    end


    result
end
