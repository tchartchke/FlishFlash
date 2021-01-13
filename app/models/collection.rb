class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :cards

  def slug
    "#{name.downcase.gsub(' ', '-')}#{id}"
  end

  extend Unslug
end 