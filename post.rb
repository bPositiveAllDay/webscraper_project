require 'colorize'


class Post
 attr_reader :title, :url, :points, :item_id, :comments
 attr_accessor  :comment_count, :comment_storage
 
 # @@all_comments = []


 def initialize(title, url, points)
   @title = title
   @url = url
   @points = points
   @item_id = item_id
   @comment_count = 0
   @comment_storage = []
   

 end

 def self.create(content)
   @@comment_bank << Comment.new(content)
   puts @comment_bank
 end


 def add_to_comment_counter
   # @@comment_bank << @comments
 end
 
 def comments
   puts self.comment_storage
 end

 def add_comment(comment_object)
   
   self.comment_storage << comment_object.contents

   @comment_count += 1
   # takes a Comment object as input and adds it to the command list 
 end

def self.comment_bank
   @@comment_bank
end

end
