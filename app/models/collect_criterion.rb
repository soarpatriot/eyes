class CollectCriterion < ActiveRecord::Base
   
  validates :start_at, :end_at, :assign_mins, :response_mins, 
      :door_mins, :in_mins, :out_mins, :accquire_mins, :criteriable_id, :criteriable_type,
      presence: true
  belongs_to :criteriable,  polymorphic: true
  def self.criteriable_relative
           { 
                 "Province" =>  "省",
                 "City" => "市",
                 "Department" => "站点分拣"  }

  end
end
