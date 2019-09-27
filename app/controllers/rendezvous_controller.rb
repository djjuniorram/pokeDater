class RendezvousController < ApplicationController
  before_action :set_rendezvou, only: [:show, :edit, :update, :destroy]

  # GET /rendezvous
  # GET /rendezvous.json
  def index
    @rendezvous = Rendezvou.all
  end

  # GET /rendezvous/1
  # GET /rendezvous/1.json
  def show
  end

  # GET /rendezvous/new
  def new
    @rendezvou = Rendezvou.new
  end

  # GET /rendezvous/1/edit
  def edit
  end

  # POST /rendezvous
  # POST /rendezvous.json
  def create
    @rendezvou = Rendezvou.new(rendezvou_params)

    respond_to do |format|
      if @rendezvou.save
        format.html { redirect_to @rendezvou, notice: 'Rendezvou was successfully created.' }
        format.json { render :show, status: :created, location: @rendezvou }
      else
        format.html { render :new }
        format.json { render json: @rendezvou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rendezvous/1
  # PATCH/PUT /rendezvous/1.json
  def update
    respond_to do |format|
      if @rendezvou.update(rendezvou_params)
        format.html { redirect_to @rendezvou, notice: 'Rendezvou was successfully updated.' }
        format.json { render :show, status: :ok, location: @rendezvou }
      else
        format.html { render :edit }
        format.json { render json: @rendezvou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rendezvous/1
  # DELETE /rendezvous/1.json
  def destroy
    @rendezvou.destroy
    respond_to do |format|
      format.html { redirect_to rendezvous_url, notice: 'Rendezvou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendezvou
      @rendezvou = Rendezvou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendezvou_params
      params.require(:rendezvou).permit(:activity_id, :location_id, :pet_id, :single_pet_id)
    end
end
