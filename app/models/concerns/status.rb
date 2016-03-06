
module Status
  def self.included base
    base.class_eval do 
      enum status: [:user_order, :response, :call_user, :in_door, :in_station, :out_station]  
    end
  end

  def status_alias
    case self.status
    when "user_order"
      "用户下受理单"
    when "response"
      "响应用户下单"
    when "call_user"
      "联系用户"
    when "in_door"
      "上门取件"
    when "in_station"
      "揽件入站"
    when "out_station"
      "揽件出站"
    end
  end

end
