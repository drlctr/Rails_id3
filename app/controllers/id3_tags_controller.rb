class Id3TagsController < ApplicationController
  before_action :set_id3_tag, only: [:show, :edit, :update, :destroy]

  before_action :edit_warning, only: :edit

  layout 'augmented'

  # GET /id3_tags
  # GET /id3_tags.json
  def index
    @id3_tags = Id3Tag.all
  end

  # GET /id3_tags/1
  # GET /id3_tags/1.json
  def show
  end

  # GET /id3_tags/new
  def new
    @id3_tag = Id3Tag.new
    @id3_tag.genres.build
  end

  # GET /id3_tags/1/edit
  def edit
  end

  # POST /id3_tags
  # POST /id3_tags.json
  def create
    @id3_tag = Id3Tag.new(id3_tag_params)

    respond_to do |format|
      if @id3_tag.save
        format.html { render '/shared/created'}
        #format.html { redirect_to @id3_tag, notice: 'Id3 tag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @id3_tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @id3_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id3_tags/1
  # PATCH/PUT /id3_tags/1.json
  def update
    respond_to do |format|
      if @id3_tag.update(id3_tag_params)
        format.html { redirect_to @id3_tag, notice: 'Id3 tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @id3_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id3_tags/1
  # DELETE /id3_tags/1.json
  def destroy
    @id3_tag.destroy
    respond_to do |format|
      format.html { redirect_to id3_tags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id3_tag
      @id3_tag = Id3Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id3_tag_params
      params.require(:id3_tag).permit(:song_title, :artist, :album_title, :track, genres: [],genres_attributes: [:genre])
    end

    def edit_warning
      @warning = "Be Careful Editing Data!"
    end
end
