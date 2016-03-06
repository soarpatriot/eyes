class Timeline < ActiveRecord::Base
  include Status
  belongs_to :timelineable, polymorphic: true
end
