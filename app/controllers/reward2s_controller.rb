class Reward2sController < ApplicationController
  before_action :set_reward2, only: %i[ show edit update destroy ]

  # GET /reward2s or /reward2s.json
  def index
    @reward2s = Reward2.all
  end

  # GET /reward2s/1 or /reward2s/1.json
  def show
  end

  # GET /reward2s/new
  def new
    @reward2 = Reward2.new
  end

  # GET /reward2s/1/edit
  def edit
  end

  # POST /reward2s or /reward2s.json
  def create
    @reward2 = Reward2.new(reward2_params)

    respond_to do |format|
      if @reward2.save
        format.html { redirect_to reward2_url(@reward2), notice: "Reward2 was successfully created." }
        format.json { render :show, status: :created, location: @reward2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reward2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reward2s/1 or /reward2s/1.json
  def update
    respond_to do |format|
      if @reward2.update(reward2_params)
        format.html { redirect_to reward2_url(@reward2), notice: "Reward2 was successfully updated." }
        format.json { render :show, status: :ok, location: @reward2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reward2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reward2s/1 or /reward2s/1.json
  def destroy
    @reward2.destroy

    respond_to do |format|
      format.html { redirect_to reward2s_url, notice: "Reward2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward2
      @reward2 = Reward2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reward2_params
      params.require(:reward2).permit(:reward, :price, :value, :status)
    end
end
