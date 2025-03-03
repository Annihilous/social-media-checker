class SocialMediaInvestigationsController < ApplicationController
  before_action :set_social_media_investigation, only: %i[ show edit update destroy ]

  # GET /social_media_investigations or /social_media_investigations.json
  def index
    @social_media_investigations = SocialMediaInvestigation.all
  end

  # GET /social_media_investigations/1 or /social_media_investigations/1.json
  def show
  end

  # GET /social_media_investigations/new
  def new
    @social_media_investigation = SocialMediaInvestigation.new
  end

  # GET /social_media_investigations/1/edit
  def edit
  end

  # POST /social_media_investigations or /social_media_investigations.json
  def create
    @social_media_investigation = SocialMediaInvestigation.new(social_media_investigation_params)

    respond_to do |format|
      if @social_media_investigation.save
        format.html { redirect_to @social_media_investigation, notice: "Social media investigation was successfully created." }
        format.json { render :show, status: :created, location: @social_media_investigation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_media_investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_media_investigations/1 or /social_media_investigations/1.json
  def update
    respond_to do |format|
      if @social_media_investigation.update(social_media_investigation_params)
        format.html { redirect_to @social_media_investigation, notice: "Social media investigation was successfully updated." }
        format.json { render :show, status: :ok, location: @social_media_investigation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_media_investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_media_investigations/1 or /social_media_investigations/1.json
  def destroy
    @social_media_investigation.destroy!

    respond_to do |format|
      format.html { redirect_to social_media_investigations_path, status: :see_other, notice: "Social media investigation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_media_investigation
      @social_media_investigation = SocialMediaInvestigation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_media_investigation_params
      params.require(:social_media_investigation).permit(:platform, :platform_account_key, :started_at, :ended_at, :api_payload)
    end
end
