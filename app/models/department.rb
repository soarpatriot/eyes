class Department < ActiveRecord::Base
  enum dtype: [:station,:distribution_center, :tiaoling]
end
