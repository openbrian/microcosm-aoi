class MicrocosmsController < ApplicationController
  before_action :set_microcosm, only: [:show, :show_changesets, :show_organizers, :show_members, :edit, :update, :destroy]
  before_action :set_microcosm_by_key, only: [:show_by_key]
  before_action :authenticate, :except => [:index, :show, :show_by_key]  # TODO inherit
  helper_method :current_changesets
  helper_method :organizer_names

  # GET /microcosms
  # GET /microcosms.json
  def index
    @microcosms = Microcosm.order(:name)
  end

  # GET /microcosms/1
  # GET /microcosms/1.json
  def show
  end

  # GET /microcosms/mycity
  # GET /microcosms/mycity.json
  def show_by_key
    render action: "show"
  end

  def show_changesets
  end

  def show_organizers
  end

  def show_members
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


  def current_changesets
    MicrocosmChangeset.includes(:user).where(microcosm_id: @microcosm.id).where(review_num: 0).last(10)
  end


  def organizer_names
    @microcosm.organizers.map { |organizer|
#     names = organizer.user.name.split(' ')
#     names.first + ' ' + names.last.first
      organizer.user.name
    }.join(', ')
  end


  def discover_changesets
    @microcosm = Microcosm.find(params[:microcosm_id])
    # Get the greatest known changeset_id for this microcosm.
    max_id = MicrocosmChangeset.where(microcosm_id: @microcosm.id).maximum('changeset_id') || 0
    count_default = 10;
    count_max = 10000
    limit = [params.fetch(:count, count_default).to_i, count_max].min
    Osm::Changeset.where("? < max_lon and min_lon < ? and ? < max_lat and min_lat < ?", @microcosm.min_lon, @microcosm.max_lon, @microcosm.min_lat, @microcosm.max_lat).where("? < id", max_id).order(:id).limit(limit).each do |changeset|
      # Copy the user
      osm_user = Osm::User.find(changeset.user_id)
      u = User.find_or_create_by(uid: changeset.user_id) do |u|
        u.uid = changeset.user_id
        u.name = osm_user.display_name
        u.created_at = osm_user.creation_time
        u.updated_at = osm_user.creation_time
      end
      # TODO: Use default value for review_num.
      mc = MicrocosmChangeset.new(microcosm_id: @microcosm.id, changeset_id: changeset.id, user_id: u.id, review_num: 0)
      mc.save(validate: false)
    end
    render action: "show"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcosm
      @microcosm = Microcosm.find(params[:id])
    end

    def set_microcosm_by_key
      @microcosm = Microcosm.find_by(key: params[:key])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcosm_params
      params.require(:microcosm).permit(:name, :key, :facebook, :twitter, :lat, :lon, :min_lat, :max_lat, :min_lon, :max_lon, :description)
    end
end
