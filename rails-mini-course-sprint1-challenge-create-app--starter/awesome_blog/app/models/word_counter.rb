
module WordCounter

    def word_count
        if body.size === nil
            return 0

        else
            return body.split.size
        end
    end

end