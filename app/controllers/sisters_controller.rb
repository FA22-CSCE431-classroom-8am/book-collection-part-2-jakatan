class SistersController < ApplicationController
  before_action :set_sister, only: %i[ show edit update destroy ]

  # GET /sisters or /sisters.json
  def index
    @sisters = Sister.all
  end

  # GET /sisters/1 or /sisters/1.json
  def show
  end

  # GET /sisters/new
  def new
    @sister = Sister.new
  end

  # GET /sisters/1/edit
  def edit
  end

  # POST /sisters or /sisters.json
  def create
    @sister = Sister.new(sister_params)

    respond_to do |format|
      if @sister.save
        format.html { redirect_to @sister, notice: "Sister was successfully created." }
        format.json { render :show, status: :created, location: @sister }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sisters/1 or /sisters/1.json
  def update
    respond_to do |format|
      if @sister.update(sister_params)
        format.html { redirect_to @sister, notice: "Sister was successfully updated." }
        format.json { render :show, status: :ok, location: @sister }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sisters/1 or /sisters/1.json
  def destroy
    @sister.destroy
    respond_to do |format|
      format.html { redirect_to sisters_url, notice: "Sister was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sister
      @sister = Sister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sister_params
      params.require(:sister).permit(:user_id, :book_id)
    end
end
