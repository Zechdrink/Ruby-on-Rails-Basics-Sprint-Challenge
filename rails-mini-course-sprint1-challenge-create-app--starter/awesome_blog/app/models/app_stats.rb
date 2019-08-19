

class AppStats

    attr_reader :posts, :quotes

    def initialize
        @posts = Post.all
        @quotes = Quote.all
    end

    def posts_count
        return @posts.count
    end

    def quotes_count
        return @quotes.count
    end

    def posts_word_count
        counter = 0
        for post in @posts do
            counter += post.body.split.count
        end
        return counter
    end

    def quotes_word_count
        counter = 0
        for quote in @quotes do
            counter += quote.body.split.count
        end
        return counter
    end

    def total_count
        return posts_count + quotes_count
    end

    def total_word_count
        return posts_word_count + quotes_word_count
    end

end
