class ChangesetsController < ApplicationController
  before_action :set_changeset, only: [:show, :edit, :update, :destroy]

  # GET /changesets
  # GET /changesets.json
  def index
    @changesets = Changeset.all
  end

  # GET /changesets/1
  # GET /changesets/1.json
  def show
  end

  # GET /changesets/new
  def new
    @changeset = Changeset.new
  end

  # GET /changesets/1/edit
  def edit
  end

  # POST /changesets
  # POST /changesets.json
  def create
    @changeset = Changeset.new(changeset_params)

    respond_to do |format|
      if @changeset.save
        format.html { redirect_to @changeset, notice: 'Changeset was successfully created.' }
        format.json { render :show, status: :created, location: @changeset }
      else
        format.html { render :new }
        format.json { render json: @changeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /changesets/1
  # PATCH/PUT /changesets/1.json
  def update
    respond_to do |format|
      if @changeset.update(changeset_params)
        format.html { redirect_to @changeset, notice: 'Changeset was successfully updated.' }
        format.json { render :show, status: :ok, location: @changeset }
      else
        format.html { render :edit }
        format.json { render json: @changeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /changesets/1
  # DELETE /changesets/1.json
  def destroy
    @changeset.destroy
    respond_to do |format|
      format.html { redirect_to changesets_url, notice: 'Changeset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_changeset
      @changeset = Changeset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def changeset_params
      params.require(:changeset).permit(:user_id, :created_at, :min_lat, :max_lat, :min_lon, :max_lon, :closed_at, :num_changes)
    end
end
