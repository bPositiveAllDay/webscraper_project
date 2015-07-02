require 'open-uri'
require 'nokogiri'
require 'colorize'
require_relative 'post'
require_relative 'comment'


# class Scraper
# 	attr_accessor :comment_count

  # def initialize
  # end

  def get_command_line_input
    @command_line_input = ARGV[0]
  end

  def take_url_from_arvg_to_string_io
    @html_file = open(@command_line_input)
  end

  def pass_newstring_to_nokogiri
    @doc = Nokogiri::HTML(File.open(@html_file))
  end


  def parse_string_object_for_post_title
    @raw_title = @doc.search('title').map { |title| title.inner_text}
  end

# def parse_string_object_for_id
#    @raw_ids = @doc.search('.comhead > a:first-child').map { |id| id.inner_text}
# end

  def parse_string_object_for_comments
    @raw_comments = @doc.search('.default').map { |comment| comment.inner_text}
  end

  def parse_string_object_for_points
    @raw_points = @doc.search('span.score').map { |score| score.inner_text}
  end


  def identify_comments

  end


  def make_comment

  end


 #  def scrape
 #  	get_command_line_input
 #    take_url_from_arvg_to_string_io
 #    pass_newstring_to_nokogiri
 #    parse_string_object_for_post_title
	# parse_string_object_for_points
	# parse_string_object_for_comments
	
	# @title = @raw_title[0]
 #    @url = @command_line_input.to_s
 #    @points = @raw_points[0]
 #    @comment_count = @raw_comments.length
 #    post = Post.new(@title, @url, @points)


 #  end

# end

  	get_command_line_input
    take_url_from_arvg_to_string_io
    pass_newstring_to_nokogiri
    parse_string_object_for_post_title
	parse_string_object_for_points
	parse_string_object_for_comments
	
	@title = @raw_title[0]
    @url = @command_line_input.to_s
    @points = @raw_points[0]
    @comment_count = @raw_comments.length
    post = Post.new(@title, @url, @points)

 # @raw_comments.each { |comment| Post.create(comment) }


    puts "This post, with a title of: " + "#{@title}".colorize(:blue)  + ", has " + "#{@comment_count} comments".colorize(:green) + ", and " + "#{@points}.".colorize(:red)


# @title = @raw_title[0]
# @url = @command_line_input.to_s
# @points = @raw_points[0]
# # @comment_count = @raw_comments.length


# puts "Title: " + "#{@title},"  + " has #{@comment_count} comments, and #{@points}."


# puts @raw_comments
# puts post.url
