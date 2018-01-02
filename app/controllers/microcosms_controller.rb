class MicrocosmsController < ApplicationController
  before_action :set_microcosm, only: [:show, :edit, :update, :destroy]

  # GET /microcosms
  # GET /microcosms.json
  def index
    @microcosms = Microcosm.all
  end

  # GET /microcosms/1
  # GET /microcosms/1.json
  def show
  end

  # GET /microcosms/new
  def new
    @microcosm = Microcosm.new
  end

  # GET /microcosms/1/edit
  def edit
  end

  # POST /microcosms
  # POST /microcosms.json
  def create
    @microcosm = Microcosm.new(microcosm_params)

    respond_to do |format|
      if @microcosm.save
        format.html { redirect_to @microcosm, notice: 'Microcosm was successfully created.' }
        format.json { render :show, status: :created, location: @microcosm }
      else
        format.html { render :new }
        format.json { render json: @microcosm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microcosms/1
  # PATCH/PUT /microcosms/1.json
  def update
    respond_to do |format|
      if @microcosm.update(microcosm_params)
        format.html { redirect_to @microcosm, notice: 'Microcosm was successfully updated.' }
        format.json { render :show, status: :ok, location: @microcosm }
      else
        format.html { render :edit }
        format.json { render json: @microcosm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microcosms/1
  # DELETE /microcosms/1.json
  def destroy
    @microcosm.destroy
    respond_to do |format|
      format.html { redirect_to microcosms_url, notice: 'Microcosm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcosm
      @microcosm = Microcosm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcosm_params
      params.require(:microcosm).permit(:name, :key, :members_num)
    end
end
