class Country < ActiveRecord::Base

  has_many :projects
  has_many :minefields


end
