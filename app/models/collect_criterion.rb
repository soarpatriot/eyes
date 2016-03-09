class CollectCriterion < ActiveRecord::Base
   
  validates :start_at, :end_at, :assign_man_mins, :response_mins, 
      :assign_station_mins, :collect_mins,
      presence: true
  belongs_to :province
  belongs_to :city
  belongs_to :department
  def self.criteriable_relative
           { 
                 "Province" =>  "省",
                 "City" => "市",
                 "Department" => "站点分拣"  }

  end
end
