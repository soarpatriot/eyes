class Routing < ActiveRecord::Base
  belongs_to :start_province, class_name: "Province", foreign_key: "start_province_id"
  belongs_to :start_city, class_name: "City", foreign_key: "start_city_id"
  belongs_to :start_department, class_name: "Department", foreign_key: "start_department_id"
  belongs_to :destination_province, class_name: "Province", foreign_key: "destination_province_id"
  belongs_to :destiantion_city, class_name: "City", foreign_key: "destination_city_id"
  belongs_to :destiantion_department, class_name: "Department", foreign_key: "destination_department_id"
end
