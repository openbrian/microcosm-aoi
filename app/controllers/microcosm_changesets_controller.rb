class MicrocosmChangesetsController < ApplicationController
  before_action :set_microcosm_changeset, only: [:show, :edit, :update, :destroy]

  # GET /microcosm_changesets
  # GET /microcosm_changesets.json
  def index
    @microcosm_changesets = MicrocosmChangeset.last(25)
  end

  # GET /microcosm_changesets/1
  # GET /microcosm_changesets/1.json
  def show
  end

  # GET /microcosm_changesets/new
  def new
    @microcosm_changeset = MicrocosmChangeset.new
  end

  # GET /microcosm_changesets/1/edit
  def edit
  end

  # POST /microcosm_changesets
  # POST /microcosm_changesets.json
  def create
    @microcosm_changeset = MicrocosmChangeset.new(microcosm_changeset_params)

    respond_to do |format|
      if @microcosm_changeset.save
        format.html { redirect_to @microcosm_changeset, notice: 'Microcosm changeset was successfully created.' }
        format.json { render :show, status: :created, location: @microcosm_changeset }
      else
        format.html { render :new }
        format.json { render json: @microcosm_changeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microcosm_changesets/1
  # PATCH/PUT /microcosm_changesets/1.json
  def update
    respond_to do |format|
      if @microcosm_changeset.update(microcosm_changeset_params)
        format.html { redirect_to @microcosm_changeset, notice: 'Microcosm changeset was successfully updated.' }
        format.json { render :show, status: :ok, location: @microcosm_changeset }
      else
        format.html { render :edit }
        format.json { render json: @microcosm_changeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microcosm_changesets/1
  # DELETE /microcosm_changesets/1.json
  def destroy
    @microcosm_changeset.destroy
    respond_to do |format|
      format.html { redirect_to microcosm_changesets_url, notice: 'Microcosm changeset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcosm_changeset
      @microcosm_changeset = MicrocosmChangeset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcosm_changeset_params
      params.require(:microcosm_changeset).permit(:microcosm_id, :changeset_id, :review_num)
    end
end
