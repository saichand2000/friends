class FrinedsController < ApplicationController
  before_action :set_frined, only: %i[ show edit update destroy ]

  # GET /frineds or /frineds.json
  def index
    @frineds = Frined.all
  end

  # GET /frineds/1 or /frineds/1.json
  def show
  end

  # GET /frineds/new
  def new
    @frined = Frined.new
  end

  # GET /frineds/1/edit
  def edit
  end

  # POST /frineds or /frineds.json
  def create
    @frined = Frined.new(frined_params)

    respond_to do |format|
      if @frined.save
        format.html { redirect_to @frined, notice: "Frined was successfully created." }
        format.json { render :show, status: :created, location: @frined }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frined.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frineds/1 or /frineds/1.json
  def update
    respond_to do |format|
      if @frined.update(frined_params)
        format.html { redirect_to @frined, notice: "Frined was successfully updated." }
        format.json { render :show, status: :ok, location: @frined }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frined.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frineds/1 or /frineds/1.json
  def destroy
    @frined.destroy
    respond_to do |format|
      format.html { redirect_to frineds_url, notice: "Frined was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frined
      @frined = Frined.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frined_params
      params.require(:frined).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
