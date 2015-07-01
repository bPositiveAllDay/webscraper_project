require 'open-uri'
require 'nokogiri'
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

def parse_string_object_for_comment
   @raw_comments = @doc.search('span.comment').map { |comment| comment.inner_text}
end

def parse_string_object_for_post_title
   @raw_title = @doc.search('title').map { |title| title.inner_text}
end


def identify_comments

end


def make_comment

end

get_command_line_input

take_url_from_arvg_to_string_io

pass_newstring_to_nokogiri

parse_string_object_for_post_title
parse_string_object_for_comment


@comment_count = @raw_comments.length
puts @raw_title
@title = @raw_title[0]
puts @raw_comments
puts @comment_count

puts "Title: " + "#{@title},"  + " has #{@comment_count} comments."

puts @doc