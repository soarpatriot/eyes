class Collect < ActiveRecord::Base
  include Step
  has_one :waybill
  belongs_to :user
  has_many :timelines


end
