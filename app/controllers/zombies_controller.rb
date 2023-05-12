class ZombiesController < ApplicationController
  before_action :set_zombie, only: %i[ show edit update destroy ]

  # GET /zombies or /zombies.json
  def index
    @zombies = Zombie.all
  end

  # GET /zombies/1 or /zombies/1.json
  def show
  end

  # GET /zombies/new
  def new
    @zombie = Zombie.new
  end

  # GET /zombies/1/edit
  def edit
  end

  # POST /zombies or /zombies.json
  def create
    @zombie = Zombie.new(zombie_params)

    respond_to do |format|
      if @zombie.save
        format.html { redirect_to zombie_url(@zombie), notice: "Zombie was successfully created." }
        format.json { render :show, status: :created, location: @zombie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zombies/1 or /zombies/1.json
  def update
    respond_to do |format|
      if @zombie.update(zombie_params)
        format.html { redirect_to zombie_url(@zombie), notice: "Zombie was successfully updated." }
        format.json { render :show, status: :ok, location: @zombie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zombies/1 or /zombies/1.json
  def destroy
    @zombie.destroy

    respond_to do |format|
      format.html { redirect_to zombies_url, notice: "Zombie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zombie
      @zombie = Zombie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zombie_params
      params.require(:zombie).permit(:name, :bio, :age)
    end
end
