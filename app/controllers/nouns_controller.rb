class NounsController < ApplicationController
  before_action :set_noun, only: %i[ show edit update destroy ]
  # before_action :declension_check, only: %i[create update]

  # GET /nouns or /nouns.json
  def index
    @nouns = Noun.all
  end

  # GET /nouns/1 or /nouns/1.json
  def show
  end

  # GET /nouns/new
  def new
    @noun = Noun.new
    @noun.part_of_speech = PartOfSpeech.find_by en: 'noun'
    @noun.noun_declensions.build
    @noun.noun_examples.build
  end

  # GET /nouns/1/edit
  def edit
  end

  # POST /nouns or /nouns.json
  def create
    @noun = Noun.new(noun_params)

    respond_to do |format|
      if @noun.save
        format.html { redirect_to noun_url(@noun), notice: "Noun was successfully created." }
        format.json { render :show, status: :created, location: @noun }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nouns/1 or /nouns/1.json
  def update
    respond_to do |format|
      if @noun.update(noun_params)
        format.html { redirect_to noun_url(@noun), notice: "Noun was successfully updated." }
        format.json { render :show, status: :ok, location: @noun }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nouns/1 or /nouns/1.json
  def destroy
    @noun.destroy!

    respond_to do |format|
      format.html { redirect_to nouns_url, notice: "Noun was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noun
      @noun = Noun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noun_params
      params.require(:noun).permit(
        :part_of_speech_id, :gender_id, :de, :en, :ru, :transcription, :ending, :level, 
        :kind, :sg_suffix, :pl_suffix, :comment,
        noun_declensions_attributes: [:id, :gcase_id, :singular, :plural, :_destroy],
        noun_examples_attributes: [:id, :de, :en, :ru, :_destroy]
      )
    end
end
