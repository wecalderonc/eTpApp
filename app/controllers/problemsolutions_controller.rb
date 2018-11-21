class ProblemsolutionsController < ApplicationController
  before_action :set_problemsolution, only: [:show, :edit, :update, :destroy]

  # GET /problemsolutions
  # GET /problemsolutions.json
  def index
    @problemsolutions = Problemsolution.all
  end

  # GET /problemsolutions/1
  # GET /problemsolutions/1.json
  def show
  end

  # GET /problemsolutions/new
  def new
    @problemsolution = Problemsolution.new
  end

  # GET /problemsolutions/1/edit
  def edit
  end

  # POST /problemsolutions
  # POST /problemsolutions.json
  def create
    @problemsolution = Problemsolution.new(problemsolution_params)

    respond_to do |format|
      if @problemsolution.save
        format.html { redirect_to @problemsolution, notice: 'Problemsolution was successfully created.' }
        format.json { render :show, status: :created, location: @problemsolution }
      else
        format.html { render :new }
        format.json { render json: @problemsolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problemsolutions/1
  # PATCH/PUT /problemsolutions/1.json
  def update
    respond_to do |format|
      if @problemsolution.update(problemsolution_params)
        format.html { redirect_to @problemsolution, notice: 'Problemsolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @problemsolution }
      else
        format.html { render :edit }
        format.json { render json: @problemsolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problemsolutions/1
  # DELETE /problemsolutions/1.json
  def destroy
    @problemsolution.destroy
    respond_to do |format|
      format.html { redirect_to problemsolutions_url, notice: 'Problemsolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problemsolution
      @problemsolution = Problemsolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problemsolution_params
      params.fetch(:problemsolution, {})
    end
end
