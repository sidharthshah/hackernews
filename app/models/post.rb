require 'thumbs_up'
class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_voteable
  attr_accessible :link, :title, :user
end
