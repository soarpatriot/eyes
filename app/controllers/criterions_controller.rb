class CriterionsController < ApplicationController

  before_action :set_criterion, only: [:show, :edit, :update, :destroy]

  def index
    @criterions = Criterion.all.page params[:page] 
  end
  

  # GET /commissions/1
  def show
  end

  # GET /commissions/new
  def new
    @criterion = Criterion.new
  end

  # GET /commissions/1/edit
  def edit
  end

  # POST /commissions
  def create
    @criterion = Criterion.new(criterion_params)

    if @criterion.save
      redirect_to criterions_path, notice: '标准创建成功。'
    else
      render :new
    end
  end

  # PATCH/PUT /commissions/1
  def update
    if @criterion.update(criterion_params)
      redirect_to criterions_path, notice: '标准更新成功。'
    else
      render :edit
    end
  end

  # DELETE /commissions/1
  def destroy
    @criterion.destroy
    redirect_to criterions_path, notice: '标准删除成功！'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterion
      @criterion = Criterion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def criterion_params
      params.require(:criterion).permit(:id,:name, :ctype, :minutes, :criterionable_id, :criterionable_type)
    end

end
