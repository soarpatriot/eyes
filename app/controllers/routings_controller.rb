class RoutingsController < ApplicationController
  before_action :set_routing, only: [:show, :edit, :update, :destroy]

  # GET /routings
  def index
    @routings = Routing.all
  end

  # GET /routings/1
  def show
  end

  # GET /routings/new
  def new
    @routing = Routing.new
  end

  # GET /routings/1/edit
  def edit
  end

  # POST /routings
  def create
    @routing = Routing.new(routing_params)

    if @routing.save
      redirect_to @routing, notice: 'Routing was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /routings/1
  def update
    if @routing.update(routing_params)
      redirect_to @routing, notice: 'Routing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /routings/1
  def destroy
    @routing.destroy
    redirect_to routings_url, notice: 'Routing was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routing
      @routing = Routing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def routing_params
      params.require(:routing).permit(:shift, :start_at, :collect_mins, :in_mins, 
                                      :out_mins, :arrival_mins, :start_province_id, :start_city_id, 
                                      :start_city_id,:start_department_id, 
                                      :destination_province_id, :destination_city_id, :destination_department_id)
    end
end
