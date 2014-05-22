class Response < ActiveRecord::Base
  belongs_to :companies
  belongs_to :projects
end
