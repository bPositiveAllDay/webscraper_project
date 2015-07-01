class Post
attr_accessor :title, :url, :points, :item_id

 def initialize
   @title = title
   @url = url
   @points = points
   @item_id = item_id
 end


def add_to_argument_counter

end



 def comments
   # returns all comments associated with a particular post
 end

 def add_comment(comment_object)
 	Comment.new
 	@@comment_count += 1
   # takes a Comment object as input and adds it to the command list 
 end
 
end