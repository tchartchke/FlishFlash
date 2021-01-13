class User < ActiveRecord::Base
  has_many :collections
  has_many :cards, through: :collections
  has_secure_password

  def slug
    name.downcase.gsub(' ', '-')
  end
  
  extend Unslug
end 