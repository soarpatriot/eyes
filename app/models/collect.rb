class Collect < ActiveRecord::Base
  include Status
  has_one :waybill
  belongs_to :user
  has_many :timelines, as: :timelineable  


end
