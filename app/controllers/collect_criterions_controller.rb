class CollectCriterionsController < ApplicationController
  before_action :set_collect_criterion, only: [:show, :edit, :update, :destroy]

  # GET /collect_criterions
  def index
    @collect_criterions = CollectCriterion.all
  end

  # GET /collect_criterions/1
  def show
  end

  # GET /collect_criterions/new
  def new
    @collect_criterion = CollectCriterion.new
  end

  # GET /collect_criterions/1/edit
  def edit
  end

  # POST /collect_criterions
  def create
    @collect_criterion = CollectCriterion.new(collect_criterion_params)

    if @collect_criterion.save
      redirect_to collect_criterion_path, notice: '标准创建成功!'
    else
      render :new
    end
  end

  # PATCH/PUT /collect_criterions/1
  def update
    if @collect_criterion.update(collect_criterion_params)
      redirect_to collect_criterions_path, notice: '更新成功!'
    else
      render :edit
    end
  end

  # DELETE /collect_criterions/1
  def destroy
    @collect_criterion.destroy
    redirect_to collect_criterions_url, notice: '标准已经删除!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect_criterion
      @collect_criterion = CollectCriterion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collect_criterion_params
      params.require(:collect_criterion).permit(:start_at, :end_at, :assign_station_mins, :assign_man_mins, 
                                                :response_mins, :collect_mins, :province_id, :city_id, :department_id)
    end
end
