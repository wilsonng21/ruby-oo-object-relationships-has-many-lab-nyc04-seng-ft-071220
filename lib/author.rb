require 'pry'

class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post_param)
        post_param.author = self
    end

    def add_post_by_title(post_title)
        Post.new(post_title).author = self
        # binding.pry
    end

    def self.post_count 
        Post.all.size
    end
end