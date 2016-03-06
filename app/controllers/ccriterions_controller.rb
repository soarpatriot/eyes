class CcriterionsController < ApplicationController
  before_action :set_ccriterion, only: [:show, :edit, :update, :destroy]

  # GET /ccriterions
  def index
    @ccriterions = Ccriterion.all
  end

  # GET /ccriterions/1
  def show
  end

  # GET /ccriterions/new
  def new
    @ccriterion = Ccriterion.new
  end

  # GET /ccriterions/1/edit
  def edit
  end

  # POST /ccriterions
  def create
    @ccriterion = Ccriterion.new(ccriterion_params)

    if @ccriterion.save
      redirect_to @ccriterion, notice: 'Ccriterion was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ccriterions/1
  def update
    if @ccriterion.update(ccriterion_params)
      redirect_to @ccriterion, notice: 'Ccriterion was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ccriterions/1
  def destroy
    @ccriterion.destroy
    redirect_to ccriterions_url, notice: 'Ccriterion was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ccriterion
      @ccriterion = Ccriterion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ccriterion_params
      params.require(:ccriterion).permit(:start_at, :end_at, :assign_mins, :respoonse_mins, :door_mins, :in_mins, :out_mins, :accquire_mins, :criteriable_id, :criteriable_type)
    end
end
