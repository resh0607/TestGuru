class Feedback < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :email, :message
  validates :email, :message, presence: true
end
