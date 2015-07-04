require 'open-uri'
require 'nokogiri'
require 'colorize'
require_relative 'post'
require_relative 'comment'


 def get_command_line_input
   @command_line_input = ARGV[0]
 end

def take_url_from_arvg_to_string_io
   @html_file = open(@command_line_input)
 end

 def pass_newstring_to_nokogiri
   @doc = Nokogiri::HTML(File.open(@html_file))
 end

 # def parse_string_object_for_comments #finds comments w/o user id
 #   @comments = @doc.search('span.comment').map {|comment| comment.inner_text}
 # end

 def parse_string_object_for_title 
   @post_title = @doc.search('title').map {|title| title.inner_text} 
 end

 def parse_string_object_for_id #can be used to parse id seperately
   @ids = @doc.search('.comhead a:first-child').map {|id| id.inner_text}
 end

 def parse_string_object_for_score
   @post_points = @doc.search('span.score').map {|score| score.inner_text}
 end

 def identify_comments
 end

 def make_comment
 end

 def parse_string_object_for_comments_plus_id
   @comments = @doc.search('.default').map {|comment| comment.inner_text}
 end


 
   get_command_line_input
   take_url_from_arvg_to_string_io
   pass_newstring_to_nokogiri
   parse_string_object_for_title
   parse_string_object_for_score
   # parse_string_object_for_comments
   parse_string_object_for_id
   parse_string_object_for_comments_plus_id


   
   @comment_count = @comments.length
   puts "Title : #{@post_title[0]}"
   puts "Comments: #{@comment_count} comments"
   puts "#{@score}"

   post = Post.new(@post_title, @command_line_input, @post_points)

   
          # @all_ <<  @comments  


          @comments.each {|comment| post.comment_storage <<  Comment.new(comment).contents}


         #  post.add_comment("blah")
         #  post.add_comment("blah blah")


         chair = Comment.new("this is a object")
         object1 = Comment.new("object")

         post.add_comment(chair)

        post.comments