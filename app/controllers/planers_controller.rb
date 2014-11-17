class PlanersController < ApplicationController
  before_action :set_planer, only: [:show, :edit, :update, :destroy]

  # GET /planers
  # GET /planers.json
  def index
    @planers = Planer.all
  end

  # GET /planers/1
  # GET /planers/1.json
  def show
  end

  # GET /planers/new
  def new
    @planer = Planer.new
  end

  # GET /planers/1/edit
  def edit
  end

  # POST /planers
  # POST /planers.json
  def create
    @planer = Planer.new(planer_params)

    respond_to do |format|
      if @planer.save
        format.html { redirect_to @planer, notice: 'The plan was successfully created.' }
        format.json { render :show, status: :created, location: @planer }
      else
        format.html { render :new }
        format.json { render json: @planer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planers/1
  # PATCH/PUT /planers/1.json
  def update
    respond_to do |format|
      if @planer.update(planer_params)
        format.html { redirect_to @planer, notice: 'The plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @planer }
      else
        format.html { render :edit }
        format.json { render json: @planer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planers/1
  # DELETE /planers/1.json
  def destroy
    @planer.destroy
    respond_to do |format|
      format.html { redirect_to planers_url, notice: 'The plan was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planer
      @planer = Planer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planer_params
      params.require(:planer).permit(:new_plan, :priority, :date, :status)
    end
end
