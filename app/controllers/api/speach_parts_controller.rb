class Api::SpeachPartsController < ApplicationController
  respond_to :json

  def index
    respond_with SpeachPart.order(de: :DESC)
  end

  def show
    respond_with SpeachPart.find(params[:id])
  end

  def create
    respond_with :api, SpeachPart.create(speach_part_params)
  end

  def destroy
    respond_with SpeachPart.destroy(params[:id])
  end

  def update
    speach_part = SpeachPart.find(params['id'])
    speach_part.update(speach_part_params)
    respond_with SpeachPart, json: speach_part
  end

  private

  def speach_part_params
    params.require(:speach_part).permit(:id, :de, :en, :ru)
  end
end
