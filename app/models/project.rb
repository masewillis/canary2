class Project < ActiveRecord::Base

  belongs_to :companies
  belongs_to :countries
  belongs_to :minefields

  has_many :responses




end
