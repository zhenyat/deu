class GcasesController < ApplicationController
  def index
    @gcases = Gcase.all
  end
end
