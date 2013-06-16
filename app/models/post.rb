require 'thumbs_up'
class Post < ActiveRecord::Base
  self.per_page = 10
  belongs_to :user
  acts_as_voteable
  attr_accessible :link, :title, :user, :username
end
