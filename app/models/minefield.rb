class Minefield < ActiveRecord::Base

  belongs_to :countries
  has_many :projects

end
