class Job < ActiveRecord::Base
  self.per_page = 10
  attr_accessible :expires, :link, :title
end
