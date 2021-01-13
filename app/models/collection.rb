class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :cards
  belongs_to :subject
end 