

class Book
    attr_accessor :title, :author, :pages
end


book1 = Book.new()

book1.title = "Charlie Brown"
book1.author = "Charles Schulz"
book1.pages = 350

class AdvBook
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages) # like a constructor
        @title = title
        @author = author
        @pages = pages
    end
    def is_long_book
        return @pages > 100
    end
end

book2 = AdvBook.new("Dilbert","Scott Adams", 150)
puts book2.title
puts book2.is_long_book


# inheritance -- single class only
class ComicBook < AdvBook

    # override the base method
    def is_long_book
        @pages > 10
    end
end
comicBook1 = ComicBook.new("SpiderMan", "Stan Lee", 55)
puts "Comic Book"
puts comicBook1.is_long_book