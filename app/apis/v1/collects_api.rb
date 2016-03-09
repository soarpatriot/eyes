class V1::CollectsApi < Grape::API
  namespace :collects do
    params do 
      requires :accepted_code, type: String, desc: "受理单号"
      requires :opt_at, type: DateTime, desc: "操作时间"
      requires :step, type: Integer, desc: "步骤,
           0 用户下单， 1 分配站点， 2 分配配送员， 3 配送员响应， 4 已揽件， 5 揽件入站, 6 揽件出站
          [:user_order, :assign_station, :assign_man, :response, :collect, :in_station, :out_station] "
      requires :remark, type: String, desc: "描述"
      optional :user_id, type: Integer, desc: "操作用户id"
      optional :department_id, type: Integer, desc: "受理站点ID"
      
    end
    post do 
      collect = Collect.where(accepted_code: params[:accepted_code]).first
      timeline = Timeline.new opt_at: params[:opt_at], step: params[:step], remark: params[:remark]
      timeline.user_id = params[:user_id] unless params[:user_id].nil?
      
      if collect.nil?
        collect = Collect.new accepted_code: params[:accepted_code], step: params[:step]
      end
      collect.department_id = params[:department_id] unless params[:department_id].nil?
      collect.user_id = params[:user_id] unless params[:user_id].nil?
      collect.save 
      timeline.collect = collect
      timeline.save
      {code:0, message: "success"}  
    end
  end 
end
