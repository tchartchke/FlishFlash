class User < ActiveRecord::Base
  has_many :collections
  has_many :cards, through: :collections
  has_many :subjects, through: :collections
  has_secure_password

  def slug
    name.downcase.gsub(' ', '-')
  end
  
  def self.find_by_slug(slug)
    all.find { |property| property.slug == slug }
  end

  def subject_list
    subjects.uniq.sort_by(&:id)
  end
end 