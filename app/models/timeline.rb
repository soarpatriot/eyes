class Timeline < ActiveRecord::Base
  include Step
  belongs_to :collect
end
