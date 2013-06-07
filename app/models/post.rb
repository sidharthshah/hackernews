require 'thumbs_up'
class Post < ActiveRecord::Base
  acts_as_voteable
  attr_accessible :link
end
