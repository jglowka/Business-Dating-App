class Event < ApplicationRecord
  belongs_to :user
  has_many :atendees
  has_many :users, :through => :atendees
end
