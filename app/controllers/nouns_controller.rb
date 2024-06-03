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

    # def declension_check
    #   gender_id = params['noun']['gender_id']
    #   gender_other_id = Gender.find_by(en: 'other').id
    #   singular_number_id = Number.find_by(en: 'singular').id
    #   plural_number_id = Number.find_by(en: 'plural').id
    #   puts "======= ZT1  gender_id: #{gender_id}, gender_other_id: #{gender_other_id}, singular_number_id: #{singular_number_id}, plural_number_id: #{plural_number_id}"
    #   params['noun']["noun_declensions_attributes"].each do |declension|
    #     puts "----- ZT2 last-gcase_id: #{declension.last['gcase_id']}, last-singular: #{declension.last['singular']}, last-plural: #{declension.last['plural']}"
    #     gcase_id = declension.last['gcase_id']
    #     article_singular = declension.last['singular'].split().first
    #     article_plural = declension.last['plural'].split().first
    #     puts "+++++ ZT3 gcase_id: #{gcase_id}, article_singular: #{article_singular}, article_plural: #{article_plural}"
    #     if(
    #       article_singular != Article.find_by(
    #         gcase_id: gcase_id, number_id: singular_number_id, gender_id: gender_id).de
    #     )
    #       redirect_to :new, status: :unprocessable_entity
    #       # return {status: 'error', message: "Incorrect singular article for case: #{gcase.en}"}
    #       # @noun.errors.add(:base, "Article is not correct: #{article_singular} (#{Gcase.find(gcase_id).de} / singular)") 
    #     end
  
    #     if(
    #       article_plural != Article.find_by(
    #         gcase_id: gcase_id, number_id: plural_number_id, gender_id: gender_other_id).de
    #     )
    #       redirect_to :new, status: :unprocessable_entity
    #       # return {status: 'error', message: "Incorrect plural article for case: #{gcase.en}"}
    #     # @noun.errors.add(:base, "Article is not correct: #{article_plural} (#{Gcase.find(gcase_id).de} / plural)")
    #     end
    #     return{status: 'ok'}
    #   end

      # result = @noun.declension_articles_check
      # if result[:status] == 'error'
      #   format.html { render :new, status: result[:message] }
      # return {status: 'error', message: "Incorrect plural article for case: #{gcase.en}"}
      # end
    # end

    # Use callbacks to share common setup or constraints between actions.
    def set_noun
      @noun = Noun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noun_params
      params.require(:noun).permit(
        :part_of_speech_id, :gender_id, :de, :en, :ru, :transcription, :ending, :comment,
        noun_declensions_attributes: [:id, :gcase_id, :singular, :plural, :_destroy]
      )
    end
end
