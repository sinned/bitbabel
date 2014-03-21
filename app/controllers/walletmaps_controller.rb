class WalletmapsController < ApplicationController
  before_action :set_walletmap, only: [:show, :edit, :update, :destroy]

  # GET /walletmaps
  # GET /walletmaps.json
  def index
    @walletmaps = Walletmap.all
  end

  # GET /walletmaps/1
  # GET /walletmaps/1.json
  def show
  end

  # GET /walletmaps/new
  def new
    @walletmap = Walletmap.new
  end

  # GET /walletmaps/1/edit
  def edit
  end

  # POST /walletmaps
  # POST /walletmaps.json
  def create
    @walletmap = Walletmap.new(walletmap_params)

    respond_to do |format|
      if @walletmap.save
        format.html { redirect_to @walletmap, notice: 'Walletmap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @walletmap }
      else
        format.html { render action: 'new' }
        format.json { render json: @walletmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walletmaps/1
  # PATCH/PUT /walletmaps/1.json
  def update
    respond_to do |format|
      if @walletmap.update(walletmap_params)
        format.html { redirect_to @walletmap, notice: 'Walletmap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @walletmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walletmaps/1
  # DELETE /walletmaps/1.json
  def destroy
    @walletmap.destroy
    respond_to do |format|
      format.html { redirect_to walletmaps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walletmap
      @walletmap = Walletmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walletmap_params
      params.require(:walletmap).permit(:wallet, :address, :address_type)
    end
end
