class DisneysController < ApplicationController
  before_action :set_disney, only: %i[ show edit update destroy ]

  # GET /disneys or /disneys.json
  def index
    @disneys = Disney.all
  end

  # GET /disneys/1 or /disneys/1.json
  def show
  end

  # GET /disneys/new
  def new
    @disney = Disney.new
  end

  # GET /disneys/1/edit
  def edit
  end

  # POST /disneys or /disneys.json
  def create
    @disney = Disney.new(disney_params)

    respond_to do |format|
      if @disney.save
        format.html { redirect_to disney_url(@disney), notice: "Disney was successfully created." }
        format.json { render :show, status: :created, location: @disney }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disney.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disneys/1 or /disneys/1.json
  def update
    respond_to do |format|
      if @disney.update(disney_params)
        format.html { redirect_to disney_url(@disney), notice: "Disney was successfully updated." }
        format.json { render :show, status: :ok, location: @disney }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disney.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disneys/1 or /disneys/1.json
  def destroy
    @disney.destroy!

    respond_to do |format|
      format.html { redirect_to disneys_url, notice: "Disney was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disney
      @disney = Disney.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disney_params
      params.require(:disney).permit(:title, :main_character, :year_created)
    end
end
