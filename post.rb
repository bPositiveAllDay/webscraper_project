require 'colorize'


class Post
  attr_accessor :title, :url, :points, :item_id

  def initialize(title, url, points)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
  end


  def comments
  	puts @raw_comments
  end


  def self.comment_bank
    @@comment_bank
  end


end