class VerbsController < ApplicationController
  before_action :set_verb, only: %i[ show edit update destroy ]

  # GET /verbs or /verbs.json
  def index
    @verbs = Verb.all
  end

  # GET /verbs/1 or /verbs/1.json
  def show
  end

  # GET /verbs/new
  def new
    @verb = Verb.new
    verb_associations
    Conjugation.personal_pronouns.keys.each do |personal_pronoun|
      @verb.conjugations.build personal_pronoun: personal_pronoun
    end
    5.times do
      @verb.verb_examples.build
    end
  end

  # GET /verbs/1/edit
  def edit
    
    if @verb.conjugations.count == 0
      Conjugation.personal_pronouns.keys.each do |personal_pronoun|
        @verb.conjugations.build personal_pronoun: personal_pronoun
      end
    else
      existing_personal_pronouns = []
      @verb.conjugations.each do |conjugation|
        existing_personal_pronouns.push conjugation.personal_pronoun
      end
      Conjugation.personal_pronouns.keys.each do |personal_pronoun|
        @verb.conjugations.build(personal_pronoun: personal_pronoun) unless existing_personal_pronouns.include? personal_pronoun
      end
    end
  
    (5 - @verb.verb_examples.count).times do
      @verb.verb_examples.build
    end
  end

  # POST /verbs or /verbs.json
  def create
    @verb = Verb.new(verb_params)

    respond_to do |format|
      if @verb.save
        format.html { redirect_to verb_url(@verb), notice: "Verb was successfully created." }
        format.json { render :show, status: :created, location: @verb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verbs/1 or /verbs/1.json
  def update
    respond_to do |format|
      if @verb.update(verb_params)
        format.html { redirect_to verb_url(@verb), notice: "Verb was successfully updated." }
        format.json { render :show, status: :ok, location: @verb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verbs/1 or /verbs/1.json
  def destroy
    @verb.destroy!

    respond_to do |format|
      format.html { redirect_to verbs_url, notice: "Verb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verb
      @verb = Verb.find(params[:id])
      verb_associations
    end

    def verb_associations
      @parts_of_speech = PartOfSpeech.all
      @verb.part_of_speech_id = PartOfSpeech.find_by(en: 'verb').id
      @stem_vowels = StemVowel.all
    end

    def verb_conjugations_build
      Conjugation.personal_pronouns.each do |pp|
        puts "ZT4=== #{pp.first}"
        @verb.conjugations.build personal_pronoun: pp.first
      end
    end

    # Only allow a list of trusted parameters through.
    def verb_params
      params.require(:verb).permit(
        :part_of_speech_id, :stem_vowel_id, :infinitive, :present, :past, :participle, :trascription, :ru, :en,  :level, :form, :auxiliary, :prefix,
        conjugations_attributes: [:id, :_destroy, :personal_pronoun, :present_simple, :past_simple, :present_perfect],
        verb_examples_attributes: [:id, :de, :en, :ru, :_destroy]
      )
    end
end
