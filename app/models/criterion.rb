class Criterion < ActiveRecord::Base
  
  validates :name, :step, :minutes,:ctype, presence: true
end
