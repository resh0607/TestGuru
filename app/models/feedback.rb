class Feedback < ApplicationRecord
  attr_accessor :email, :message
  
  validates_presence_of :email, :message
end
