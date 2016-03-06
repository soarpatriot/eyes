class CollectsController < ApplicationController


  def index
    @collects = Collect.all.page params[:page] 
  end
  

  # GET /commissions/1
  def show
  end
  
  def timeline
    @timelines = Collect.find(params[:id]).timelines
    
  end
end
