class TimelinesController < ApplicationController

  def show
    @timeline = Timeline.find(params[:id]) 
  end

end
